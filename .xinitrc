# disable screen saver blanking
xset -dpms
setterm -blank 0 
setterm -powersave off 
setterm -powerdown 0
xset s off

# update dwm title bar every minute
while true; do
	xsetroot -name "$( date +"%a %F %R" ) $( cat /sys/class/power_supply/BAT0/capacity )%"
	sleep 1m
done &

xrdb -load .Xresources

# keep primary buffer & clipboard in sync
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys &

while true; do
	# log stderr
	dwm 2> ~/.dwm.log
done

# mouse cursor acceleration
xset m 6/2 0

unclutter -idle 10 &
