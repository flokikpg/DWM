#!/bin/sh

# Dynamic wallpapers
$HOME/.local/bin/random_wallpaper.sh

xset r rate 200 35 &

slstatus &

picom &

# sxhkd
# (re)load sxhkd for keybinds
if hash sxhkd >/dev/null 2>&1; then
	pkill sxhkd
	sleep 0.5
	sxhkd -c "$HOME/.config/sxhkd/sxhkdrc" &
fi

while true; do
    # Log stderror to a file-
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm 2/dev/null 2>&1
done
