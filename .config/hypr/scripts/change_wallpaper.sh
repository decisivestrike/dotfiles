#!/usr/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers/unsorted"
CURRENT_WALL=$(awww query | awk '{print $8}')

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n1)

awww img --transition-fps 120 \
	--transition-type wipe \
	--transition-angle 30 \
	--transition-duration 0.8 \
	--transition-step 40 \
	--transition-bezier 0.42,0.0,1.0,1.0 \
	"$WALLPAPER"
