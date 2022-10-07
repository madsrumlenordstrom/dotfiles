#!/bin/sh

# Script to control volume 

ctl=""

sleep_dur=0.03

if [ "$1" = "up" ]
then
	ctl="--increase 1"
elif [ "$1" = "down" ]
then
	ctl="--decrease 1"
else
	echo "Print help message"
	exit 1
fi

pamixer --unmute
pamixer $ctl
sleep $sleep_dur
pamixer $ctl
sleep $sleep_dur
pamixer $ctl
sleep $sleep_dur
pamixer $ctl
sleep $sleep_dur
pamixer $ctl
