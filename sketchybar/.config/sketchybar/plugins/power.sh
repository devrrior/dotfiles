#!/bin/bash

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep "AC Power")

if [[ $CHARGING != "" ]]; then
  sketchybar -m --set battery \
    icon=\
    icon.color=0xff9ece6a \
    label=$(printf "${BATT_PERCENT}%%")
  exit 0
else
  sketchybar -m --set battery \
    icon.color=0xffAFB2B8 \
    icon=\
    label=$(printf "${BATT_PERCENT}%%")
fi
