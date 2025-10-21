#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Auto-hide the Dock
defaults write com.apple.dock autohide -bool true  # default false

# Set Dock icon size
defaults write com.apple.dock tilesize -int 39  # default 48

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool false  # default false

# Group windows by application in Mission Control
defaults write com.apple.dock expose-group-apps -bool true  # default false

# Set bottom-right hot corner to "Put display to sleep"
defaults write com.apple.dock wvous-br-corner -int 14
defaults write com.apple.dock wvous-br-modifier -int 0

# Set top-right hot corner to "Desktop" with Command key modifier
defaults write com.apple.dock wvous-tr-corner -int 4  # 4 = Desktop
defaults write com.apple.dock wvous-tr-modifier -int 1048576  # 1048576 = Command key

# Clear the Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Add apps and folders from dock-apps.txt
DOCK_APPS_FILE="$SCRIPT_DIR/dock-apps.txt"
if [ -f "$DOCK_APPS_FILE" ]; then
    while IFS= read -r line; do
        # Skip empty lines and comments
        [[ "$line" =~ ^[[:space:]]*#.*$ || "$line" =~ ^[[:space:]]*--.*$ || -z "$line" ]] && continue

        # Determine if this is a folder or app based on the presence of "directory-tile"
        if [[ "$line" == *"directory-tile"* ]]; then
            # Add folder to Dock
            defaults write com.apple.dock persistent-others -array-add "$line"
        else
            # Add app to Dock (default)
            defaults write com.apple.dock persistent-apps -array-add "$line"
        fi
    done < "$DOCK_APPS_FILE"
else
    echo "Warning: $DOCK_APPS_FILE not found. Skipping Dock app configuration."
fi

# ---------------------------------------------------------------
# Restart the Dock to apply changes
killall Dock || true
# ---------------------------------------------------------------
