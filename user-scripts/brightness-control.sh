#!/bin/sh

# Script to control brightness of screen

ctl=""

sleep_dur=0.04

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
brightnessctl -q set $ctl
sleep $sleep_dur
brightnessctl -q set $ctl
echo $ctl
