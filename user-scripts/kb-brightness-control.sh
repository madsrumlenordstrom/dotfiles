#!/bin/sh

# Script to control brightness of keyboard

ctl=""
val=0

sleep_dur=0.025

msgTag="kb-brightness"

showBright() {
	bright="$(brightnessctl -m --device=smc::kbd_backlight get)" 
	bright=$(($bright * 100 / 255))
	bright=$(($bright + $val))
  # Show the volume notification
  dunstify -a "change-kb-brightness" -u low --icon=/usr/share/icons/Papirus-Dark/symbolic/status/keyboard-brightness-symbolic.svg -h string:x-dunst-stack-tag:$msgTag -h int:value:"$bright" "Keyboard brightness"
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

showBright
brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
brightnessctl -q --device=smc::kbd_backlight set $ctl
sleep $sleep_dur
