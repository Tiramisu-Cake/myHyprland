#!/usr/bin/env bash

DIR="$HOME/Pictures/wallpapers"
WALL=$(find "$DIR" -maxdepth 1 -type f -iregex '.*\.\(png\|jpe?g\|webp\)$' | shuf -n1) || exit 0
sleep 0.3
hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ",$WALL"
hyprctl hyprpaper unload unused
