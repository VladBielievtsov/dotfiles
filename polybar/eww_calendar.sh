#!/bin/bash

EWWRUN="$HOME/eww/target/release/eww"

if pgrep -x "eww" | grep -q "calendar"; then
    # If it's running, close it
    $EWWRUN close calendar
else
    # If it's not running, open it
    $EWWRUN open calendar
fi
