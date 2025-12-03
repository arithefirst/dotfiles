#!/usr/bin/env bash

# Simple script to jump to steam if it's in another
# workspace whenever it sets its workspace status to "urgent".
# ---------------------------------
# This allows pressing the home button on your controller to
# auto open and jump to big picture mode.


# Poll for urgent windows
while true; do
    urgent=$(hyprctl -j clients | jq '.[] | select(.urgent == true)')
    if [[ -n "$urgent" ]]; then
        class=$(echo "$urgent" | jq -r '.class')
        ws=$(echo "$urgent" | jq -r '.workspace.id')

        if [[ "$class" == "steam_app_"* || "$class" == "Steam" ]]; then
            hyprctl dispatch workspace "$ws"
        fi
    fi
    sleep 0.5
done

