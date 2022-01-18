#!/bin/bash
intern1="eDP-1"
extern1="HDMI-1"
intern2="eDP-1-1"
extern2="HDMI-1-1"
noWanted="DP-1"

if xrandr | grep "$extern1 connected"; then
    xrandr --output "$intern1" --off --output "$extern1" --mode 1920x1080 --rate 120.00
elif xrandr | grep "$extern2 connected"; then
    xrandr --output "$intern2" --off --output "$extern2" --mode 1920x1080 --rate 120.00
elif xrandr | grep "$intern1 connected"; then
    xrandr --output "$extern1" --off --output "$intern1" --mode 1920x1080
else
    xrandr --output "$extern2" --off --output "$intern2" --mode 1920x1080
fi