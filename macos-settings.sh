#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Backup current settings
chmod +x "$SCRIPT_DIR/macos_settings/backup-settings.sh"
"$SCRIPT_DIR/macos_settings/backup-settings.sh"

# Global settings
chmod +x "$SCRIPT_DIR/macos_settings/global.sh"
"$SCRIPT_DIR/macos_settings/global.sh"

# Finder settings
chmod +x "$SCRIPT_DIR/macos_settings/finder.sh"
"$SCRIPT_DIR/macos_settings/finder.sh"

# Dock settings
chmod +x "$SCRIPT_DIR/macos_settings/dock.sh"
"$SCRIPT_DIR/macos_settings/dock.sh"

# Mouse and trackpad settings
chmod +x "$SCRIPT_DIR/macos_settings/mouse-trackpad.sh"
"$SCRIPT_DIR/macos_settings/mouse-trackpad.sh"

# Login items and automatic updates
chmod +x "$SCRIPT_DIR/macos_settings/login-and-updates.sh"
"$SCRIPT_DIR/macos_settings/login-and-updates.sh"

# Menu bar settings
chmod +x "$SCRIPT_DIR/macos_settings/menu_bar.sh"
"$SCRIPT_DIR/macos_settings/menu_bar.sh"

# Privacy and security settings
chmod +x "$SCRIPT_DIR/macos_settings/privacy_security.sh"
"$SCRIPT_DIR/macos_settings/privacy_security.sh"

# Display settings
chmod +x "$SCRIPT_DIR/macos_settings/display.sh"
"$SCRIPT_DIR/macos_settings/display.sh"


# Apply changes (restart affected apps)
killall SystemUIServer || true
killall Finder  || true
killall Dock || true
