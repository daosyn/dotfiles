#!/bin/sh

feh --bg-fill ~/wallpapers/fireworks.jpg
redshift -l "42:89" &
while true; do
    dateval="$(date +"%c")"
    battval="$(< /sys/class/power_supply/BAT0/capacity)"
    xsetroot -name "$battval% | $dateval"
    sleep 1
done &
exec dwm
