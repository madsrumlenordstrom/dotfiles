#!/bin/sh

# Script to control brightness of keyboard

ctl=""

sleep_dur=0.025

msgTag="kb-brightness"

showBright() {
	bright="$(brightnessctl -m --device=smc::kbd_backlight get)" 
	bright=$(($bright * 100 / 255))
  # Show the volume notification
  dunstify -a "change-kb-brightness" -u low --icon=/usr/share/icons/Papirus-Dark/16x16/actions/brightnesssettings.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$bright" "Brightness: ${bright}%"
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

brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
showBright
brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
showBright
brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
showBright
