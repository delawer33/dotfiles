#!/bin/bash
ws=$1
hyprctl dispatch workspace "$ws"
monitor=$(hyprctl workspaces -j | jq -r ".[] | select(.id == $ws) | .monitor")
hyprctl dispatch focusmonitor id:$monitor
hyprctl dispatch movecursor "50% 50%"


