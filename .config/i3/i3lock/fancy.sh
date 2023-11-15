#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
convert -scale 10% -blur 0x2.5 -resize 1000% /tmp/screen_locked.png /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png --nofork
rm /tmp/screen_locked.png
