#!/bin/bash
set -e
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 5% -scale 2000% /tmp/screen_locked2.png
i3lock -i /tmp/screen_locked2.png
