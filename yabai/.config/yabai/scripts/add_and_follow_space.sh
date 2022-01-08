#!/usr/bin/env bash

yabai -m space --create
QUERY="$(yabai -m query --spaces | jq -r '.[] | [.index] | @sh')"
LENGTH="${#QUERY}"

if [[ "$LENGTH" = 7 ]]; then
  yabai -m space --focus 4
elif [[ "$LENGTH" = 9 ]]; then
  yabai -m space --focus 5
elif [[ "$LENGTH" = 11 ]]; then
  yabai -m space --focus 6
elif [[ "$LENGTH" = 13 ]]; then
  yabai -m space --focus 7
elif [[ "$LENGTH" = 15 ]]; then
  yabai -m space --focus 8
elif [[ "$LENGTH" = 17 ]]; then
  yabai -m space --focus 9
fi

