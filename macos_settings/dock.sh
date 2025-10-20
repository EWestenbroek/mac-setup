#!/bin/bash

# Auto-hide the Dock
defaults write com.apple.dock autohide -bool true  # default false

# Set Dock icon size
defaults write com.apple.dock tilesize -int 39  # default 48

# Set bottom-right hot corner to "Put display to sleep"
defaults write com.apple.dock wvous-br-corner -int 14
defaults write com.apple.dock wvous-br-modifier -int 0

# Clear the Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Add apps and folders from dock_apps.txt
if [ -f "dock_apps.txt" ]; then
    while IFS= read -r line; do
        # Skip empty lines and comments
        [[ "$line" =~ ^[[:space:]]*#.*$ || "$line" =~ ^[[:space:]]*--.*$ || -z "$line" ]] && continue

        # Add app to Dock
        if [[ "$line" == *"persistent-apps"* ]]; then
            defaults write com.apple.dock persistent-apps -array-add "$line"
        # Add folder to Dock
        elif [[ "$line" == *"persistent-others"* ]]; then
            defaults write com.apple.dock persistent-others -array-add "$line"
        fi
    done < "dock_apps.txt"
fi

# ---------------------------------------------------------------
# Restart the Dock to apply changes
killall Dock || true
# ---------------------------------------------------------------
