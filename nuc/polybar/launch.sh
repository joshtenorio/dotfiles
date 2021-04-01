#! /usr/bin/env bash

DIR="$HOME/.config/polybar"

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q leftbar &
polybar -q rightbar &
#polybar -q botbar &

#if type "xrandr"; then
#	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#		MONITOR=$m polybar -- reload topbar &
#	done
#else
##	polybar --reload topbar &
#fi
