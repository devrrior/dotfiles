#!/usr/bin/env bash
yabai -m window --toggle zoom-fullscreen
yabai -m window --toggle border

SPACE="$(yabai -m query --windows --window | jq -r '. | .space | @sh')"
PADDING="$(yabai -m config --space "${SPACE}" top_padding)"



# if [ "$BORDER" = true ]; then
#   yabai -m config --space "${SPACE}" window_border off
# else 
#   yabai -m config --space "${SPACE}" window_border on
# fi

if [ "$PADDING" = 14 ]; then
  yabai -m config --space "${SPACE}" top_padding     0
  yabai -m config --space "${SPACE}" bottom_padding  0
  yabai -m config --space "${SPACE}" left_padding    0
  yabai -m config --space "${SPACE}" right_padding   0
else
  yabai -m config --space "${SPACE}" top_padding     14
  yabai -m config --space "${SPACE}" bottom_padding  14
  yabai -m config --space "${SPACE}" left_padding    14
  yabai -m config --space "${SPACE}" right_padding   14
fi
