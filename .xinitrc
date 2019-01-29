#!/bin/sh

feh --bg-fill $WALLPAPER
redshift -l "42:-89" &
while true; do
    battval="$(cat /sys/class/power_supply/BAT0/capacity)"
    dateval="$(date +"%A %d %B | %l:%M %P")"
    xsetroot -name " $battval% | $dateval "
    sleep 1
done &
exec dwm
