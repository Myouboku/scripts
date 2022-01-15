#!/bin/bash
while true
do
	intern=eDP-1-1
	extern=HDMI-1-1

	if xrandr | grep "$extern disconnected"; then
        xrandr --output "$extern" --off --output "$intern" --mode 1920x1080
	else
        xrandr --output "$intern" --off --output "$extern" --mode 1920x1080 --rate 120.00
	fi
	sleep 5
done
