#!/bin/bash

export DISPLAY=:0
BATTERY_PATH="/sys/class/power_supply/BAT1"

last_status=""
CriticalAlert=10
NormalAlert=20
LowAlert=35

while true; do
  BatteryCapacity=$(cat "$BATTERY_PATH/capacity")
  BatteryStatus=$(cat "$BATTERY_PATH/status")

  if [[ "$BatteryStatus" == "Discharging" ]]; then
    if [ "$BatteryCapacity" -le "$CriticalAlert" ]; then
      notify-send -u critical "󰂃 Battery Low" "Battery is at $BatteryCapacity%"
      sleep 60 # 1min
    elif [ "$BatteryCapacity" -le "$NormalAlert" ]; then
      notify-send -u normal "󰁻 Battery Warning" "Battery is at $BatteryCapacity%"
      sleep 300 # 5mins
    elif [ "$BatteryCapacity" -le "$LowAlert" ]; then
      notify-send -u low "󰁽 Battery Info" "Consider plugging in the charger. Battery is at $BatteryCapacity%"
      sleep 480 # 8mins
    fi
  elif [[ "$BatteryStatus" == "Full" ]] && [[ "$last_status" != "Full" ]]; then
    notify-send -u low "󰁹 Battery Full" "You can unplug the charger."
  else
    sleep 1800 # 30mins
  fi

  last_status="$BatteryStatus"
done
