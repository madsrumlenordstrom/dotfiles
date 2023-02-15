#!/bin/sh

# Script to control volume 

ctl=""

msgTag="systemVolume"

showVol() {
	volume="$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ print $2 }' | sed -r 's/(\.|0.|0.0)//')" 

	if [ "$volume" = "0" ]; then
	    # Show the sound muted notification
	    dunstify -a "changeVolume" -u low --icon=/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-muted.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: muted" 
	else
	    # Show the volume notification
	    dunstify -a "changeVolume" -u low --icon=/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-high.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: ${volume}%"
	fi
}

if [ "$1" = "up" ]
then
	ctl="set-volume --limit 1.0 @DEFAULT_AUDIO_SINK@ 1%+"
elif [ "$1" = "down" ]
then
	ctl="set-volume --limit 1.0 @DEFAULT_AUDIO_SINK@ 1%-"
else
	echo "Print help message"
	exit 1
fi

wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
showVol
wpctl $ctl
showVol
wpctl $ctl
showVol
wpctl $ctl
showVol
wpctl $ctl
showVol
wpctl $ctl
showVol

