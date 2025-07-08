#!/bin/bash

ICON_MUTED="   "
ICON_UNMUTED="   " 

if [[ "$1" == "toggle" ]]; then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
fi

MUTE_STATUS=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [[ "$MUTE_STATUS" == "yes" ]]; then
    echo -n "{\"text\": \"$ICON_MUTED\", \"tooltip\": \"Muted\", \"class\": \"mute\"}"
else
    echo -n "{\"text\": \"$ICON_UNMUTED\", \"tooltip\": \"Unmuted\", \"class\": \"unmute\"}"
fi
