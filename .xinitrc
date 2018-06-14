feh --bg-fill /home/daosyn/wallpapers/fireworks.jpg
while true; do
	xsetroot -name "$( date +"%c" )"
	sleep 1
done &
exec dwm
