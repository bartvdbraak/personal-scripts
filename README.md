# Personal Scripts
Scripts that I wrote (mostly bash) for personal use and automation. Most of them were written on Linux Mint Tina, so they might need some dependencies on other systems.

### firefox-update.sh
A script that updates your firefox install. Needs some fixes.

### switch-automate.sh
Changes `alsamixer`'s setting for Auto-Mute, such that you can switch inputs that are on your line-out audio (headphones/speakers).

### windowDims.scpt
Applescript that can `get` or `set` window dimensions in MacOS.
```
// get dimensions of Application named 'Terminal' to stdout
$ osascript windowDims.scpt get Terminal
// set dimensions of Application named 'Terminal' to {721, 23, 1200, 900} 
$ osascript windowDims.scpt set Terminal 721 23 1200 900
```