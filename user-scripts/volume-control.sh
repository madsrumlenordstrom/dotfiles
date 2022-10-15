#!/bin/sh

# Script to control volume 

ctl=""

sleep_dur=0.02

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
wpctl $ctl
sleep $sleep_dur
wpctl $ctl
sleep $sleep_dur
wpctl $ctl
sleep $sleep_dur
wpctl $ctl
sleep $sleep_dur
wpctl $ctl
