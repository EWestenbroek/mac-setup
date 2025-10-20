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

# Login items and automatic updates
chmod +x ./macos_settings/login-and-updates.sh
./macos_settings/login-and-updates.sh

# Menu bar settings
chmod +x ./macos_settings/menu_bar.sh
./macos_settings/menu_bar.sh

# Privacy and security settings
chmod +x ./macos_settings/privacy_security.sh
./macos_settings/privacy_security.sh

# Display settings
chmod +x ./macos_settings/display.sh
./macos_settings/display.sh


# Apply changes (restart affected apps)
killall SystemUIServer || true
killall Finder  || true
killall Dock || true
