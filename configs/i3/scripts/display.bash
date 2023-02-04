#!/usr/bin/env bash

# Get all connected display devices
x=(`xrandr | grep -oP '([^\s]+)(?= connected)'`)

for i in "${x[@]}"
do
  if [[ "$i" != "eDP-1" ]]; then
    xrandr --auto --output "${i}" --left-of eDP-1
  fi
done
