#!/bin/bash

percent=$(cat /sys/class/power_supply/BAT0/capacity)
if [ "$percent" -lt 6 ]; then
    dunstify -i critical_battery -t 8000 -r 2593 -u critical "     Power Critical, "$percent"% charge remaining"
fi
