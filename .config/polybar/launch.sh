#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar-main.log
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main >>/tmp/"polybar-${m}.log" 2>&1 &
done

echo "Bars launched..."
