#!/bin/bash

COVER="/tmp/album-cover-resized.jpg"
COVER_SIZE="400"
ART="/tmp/album-cover.jpg"

file="$MUSIC_DIR/$(mpc --format %file% current)"
# album="${file%/*}"
# art=$(find "$album"  -maxdepth 1 | grep -m 1 ".*\.\(jpg\|png\|gif\|bmp\)")
# if [ "$art" = "" ]; then
#   art="$HOME/.ncmpcpp/default_cover.png"
# fi
ffmpeg -y -i "$file" -an -vcodec copy $ART > /dev/null 2>&1
ffmpeg -loglevel 0 -y -i "$ART" -vf "scale=$COVER_SIZE:-1" "$COVER" > /dev/null 2>&1

