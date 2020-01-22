#! /bin/bash
killall firefox
curl -sL 'https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US' | tar -C /opt -xj
firefox
DISPLAY=:0.0 notify-send "Firefox Update Script" -t 1200 -i firefox-developer-icon "Firefox Developer Edition has just been updated."
