#!/bin/bash

# Get the current layout using xkb-switch
layout=$(xkb-switch -p)

# Output the current layout
case $layout in
    "us") echo "US" ;;
    "ua") echo "UA" ;;
    *) echo "??"
       echo "Unknown layout: $layout" >> /tmp/polybar-xkeyboard-debug.log ;;
esac


