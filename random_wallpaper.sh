#!/bin/bash

# Folder containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/gruvbox"

# Pick a random image from the folder
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | shuf -n 1)

# Set it as wallpaper using feh
feh --bg-scale "$RANDOM_WALLPAPER"
