#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers/anime"
CURRENT_WALL=$(swww query | awk '{print $8}')

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n1)

swww img --transition-fps 120 \
	--transition-type fade \
	--transition-duration 1 \
	--transition-step 1 \
	--transition-bezier 1.0,0.0,0.8,1.0 \
	"$WALLPAPER"
