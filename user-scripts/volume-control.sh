#!/bin/sh

# Script to control volume 

ctl=""
val=0

msgTag="system-volume"

showVol() {
	volume="$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed -r 's/Volume:\s//g;s/(0\.|0\.0|\.)//g')" 
	volume=$(($volume + $val))

	if [ "$volume" -le "0" ]
	then
	    # Show the sound muted notification
			volume="0"
	    dunstify -a "change-volume" -u low --icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-muted-symbolic.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Audio muted" 
	else
	    # Show the volume notification
	    dunstify -a "change-volume" -u low --icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-high-symbolic.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Audio volume"
	fi
}

if [ "$1" = "up" ]
then
	ctl="set-volume --limit 1.0 @DEFAULT_AUDIO_SINK@ 1%+"
	val=3
elif [ "$1" = "down" ]
then
	ctl="set-volume --limit 1.0 @DEFAULT_AUDIO_SINK@ 1%-"
	val=-3
else
	echo "Print help message"
	exit 1
fi

wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
showVol
wpctl $ctl
wpctl $ctl
wpctl $ctl

