#!/bin/bash

source "`ueberzug library`"

COVER="/tmp/album-cover-resized.jpg"

function add_cover {
  ImageLayer::add [identifier]="img" [x]="2" [y]="1" [path]="$COVER"
}

ImageLayer 0< <(
if [ ! -f "$COVER" ]; then
  cp "$HOME/.ncmpcpp/default-cover.jpg" "$COVER"
fi
while inotifywait -q -q -e close_write "$COVER"; do
  add_cover
done
)

