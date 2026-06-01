#!/bin/bash

DIR=~/Pictures/screenshots
FILE="$DIR/$(date +'%Y-%m-%d_%H-%M-%S').png"

mkdir -p "$DIR"

case "$1" in
    full)
        grim "$FILE"
        ;;
    area)
        grim -g "$(slurp)" "$FILE"
        ;;
    *)
        echo "Usage: screenshot.sh [full|area]"
        exit 1
        ;;
esac

# If screenshot was taken successfully, open in Satty for editing
if [ -f "$FILE" ]; then
    satty --filename "$FILE" --output-filename "$FILE" --copy-command "wl-copy"
fi