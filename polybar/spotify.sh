#!/bin/bash

# Check if playerctl is available
if ! command -v playerctl &> /dev/null; then
    echo "playerctl not installed"
    exit 1
fi

# List all available players
PLAYERS=$(playerctl --list-all)

# Prioritize Spotify
if echo "$PLAYERS" | grep -i 'spotify' > /dev/null; then
    TITLE=$(playerctl -p 'spotify' metadata title 2>/dev/null)
    ARTIST=$(playerctl -p 'spotify' metadata artist 2>/dev/null)
    if [ -n "$TITLE" ]; then
        echo "$TITLE - $ARTIST"
        exit 0
    fi
fi

# Default message when no media is playing
echo "No song playing"
