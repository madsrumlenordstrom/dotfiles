#!/bin/sh

# Script to control brightness of screen

ctl=""
val=0

sleep_dur=0.030

msgTag="screen-brightness"

showBright() {
	bright="$(brightnessctl -m get)" 
	bright=$(($bright * 100 / 1388))
	bright=$(($bright + $val))
	if [ "$bright" -le "0" ]
	then
		bright=0
	fi
  # Show the volume notification
  dunstify -a "change-brightness" -u low --icon=/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-symbolic.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$bright" "Screen brightness"
}

if [ "$1" = "up" ]
then
	ctl="1%+"
	val=3
elif [ "$1" = "down" ]
then
	ctl="1%-"
	val=-3
else
	echo "Print help message"
	exit 1
fi

showBright
brightnessctl -q set $ctl
sleep $sleep_dur
brightnessctl -q set $ctl
sleep $sleep_dur
brightnessctl -q set $ctl
