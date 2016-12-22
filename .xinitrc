# Disable screen saver blanking
xset -dpms
setterm -blank 0 
setterm -powersave off 
setterm -powerdown 0
xset s off

while true; do
	xsetroot -name "$( date +"%a %F %R" ) $( cat /sys/class/power_supply/BAT0/capacity )%"
	sleep 1m    # Update time every minute
done &

xrdb -load .Xresources
#exec dwm

# keep primary buffer & clipboard in sync
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys &


while true; do
	# Log stderror to a file 
	dwm 2> ~/.dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done

# mouse cursor acceleration
xset m 6/2 0

unclutter -idle 10 &
