#!/bin/sh

feh --bg-fill $HOME/wallpapers/colors.jpg
redshift -l "42:-89" &
while true; do
    dateval="$(date +"%A %d %B | %l:%M %P")"
    battval="$(cat /sys/class/power_supply/BAT0/capacity)"
    xsetroot -name "$battval% | $dateval"
    sleep 60
done &
exec dwm
