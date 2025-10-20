#!/bin/bash


# Backup current settings
chmod +x ./macos_settings/backup-settings.sh
./macos_settings/backup-settings.sh

# Global settings
chmod +x ./macos_settings/global.sh
./macos_settings/global.sh

# Finder settings
chmod +x ./macos_settings/finder.sh
./macos_settings/finder.sh

# Dock settings
chmod +x ./macos_settings/dock.sh
./macos_settings/dock.sh


# Apply changes (restart affected apps)
killall SystemUIServer || true
killall Finder  || true
killall Dock || true
