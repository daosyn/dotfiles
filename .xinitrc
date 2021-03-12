#!/bin/sh

feh --bg-fill $WALLPAPER
redshift -l "42:-89" &
while true; do
    battval="$(cat /sys/class/power_supply/BAT0/capacity)"
    dateformat="$(date +"%A %d %B | %T")"
    dateval=$(echo "$dateformat" | tr '[:upper:]' '[:lower:]')
    xsetroot -name " $battval% | $dateval "
    sleep 1
done &
exec dwm
