#!/bin/bash

# alert me when my battery's low 30%

base=30
sleep_time=300

while true; do
    
    percentage_battery=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    
    if [ "$percentage_battery" -lt "$base" ]; then
        notify-send "Low Battery" "The battery level is $percentage_battery%. Charge that mothafogger"
    fi
    
    sleep sleep_time
done

