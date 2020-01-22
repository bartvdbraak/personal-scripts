#!/bin/bash

state=$(amixer get 'Auto-Mute Mode' | sed -n -e 's/^.*Item0: //p')

if [ "$state" == "'Enabled'" ]; then
  amixer -q set 'Auto-Mute Mode' Disabled
  DISPLAY=:0.0 notify-send "Switch Auto-Mute" -t 1200 -i audio-speakers "Speaker mode enabled."
  exit 0
elif [ "$state" == "'Disabled'" ]
then
  amixer -q set 'Auto-Mute Mode' Enabled
  DISPLAY=:0.0 notify-send "Switch Auto-Mute" -t 1200 -i audio-headphones "Headphone mode enabled."
  exit 0
else
  echo "Error: none of the states were found."
  exit 1
fi
