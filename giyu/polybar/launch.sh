#!/usr/bin/env bash

# terminate already running bar instances
killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar giyu 2>&1 | tee -a /tmp/polybar.log & disown

echo "polybar launched"
