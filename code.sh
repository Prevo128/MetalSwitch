#!/bin/bash

# Check the current state of MTL_HUD_ENABLED
CURRENT_STATE=$(launchctl getenv MTL_HUD_ENABLED)

if [[ "$CURRENT_STATE" == "1" ]]; then
    /bin/launchctl setenv MTL_HUD_ENABLED 0
    echo "Metal HUD disabled."
else
    /bin/launchctl setenv MTL_HUD_ENABLED 1
    echo "Metal HUD enabled."
fi

# © 2025 Lev Roth
