#!/bin/sh

# Script to control brightness of screen

ctl=""

sleep_dur=0.035

msgTag="screen-brightness"

showBright() {
	bright="$(brightnessctl -m get)" 
	bright=$(($bright * 100 / 1388))
  # Show the volume notification
  dunstify -a "change-brightness" -u low --icon=/usr/share/icons/Papirus-Dark/16x16/actions/brightnesssettings.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$bright" "Brightness: ${bright}%"
}

if [ "$1" = "up" ]
then
	ctl="1%+"
elif [ "$1" = "down" ]
then
	ctl="1%-"
else
	echo "Print help message"
	exit 1
fi

brightnessctl -q set $ctl
sleep $sleep_dur
showBright
brightnessctl -q set $ctl
sleep $sleep_dur
showBright
brightnessctl -q set $ctl
showBright
