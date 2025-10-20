#!/bin/bash

# ---------------------------------------------------------------
# Login Items (Apps that open automatically at login)
# ---------------------------------------------------------------

# To remove all existing login items first (optional - uncomment to use):
# osascript -e 'tell application "System Events" to delete every login item'

# Add login items - uncomment and modify app paths as needed
# Format: osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/AppName.app", hidden:false}'
# Set hidden:true to launch the app hidden in background, hidden:false to show the app window

# Common productivity apps:
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Rectangle.app", hidden:false}'
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/HiddenBar.app", hidden:true}'
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Alfred.app", hidden:true}'

# Communication apps:
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Slack.app", hidden:true}'
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Discord.app", hidden:true}'

# Cloud storage:
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Dropbox.app", hidden:true}'
# osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Google Drive.app", hidden:true}'

# To list current login items:
# osascript -e 'tell application "System Events" to get the name of every login item'

# To remove a specific login item by name:
# osascript -e 'tell application "System Events" to delete login item "AppName"'

# ---------------------------------------------------------------
# Software Update - Automatic Updates
# ---------------------------------------------------------------

# Automatically check for updates
# Options: true = check automatically (recommended), false = manual checking only
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in the background
# Options: true = download automatically, false = notify only
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Install macOS updates automatically
# Options: true = auto-install (convenient), false = manual install (more control)
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -bool true

# Install app updates from the App Store automatically
# Options: true = auto-update apps, false = manual updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# Install system data files and security updates automatically
# Options: true = auto-install (recommended for security), false = manual install
# This includes XProtect, Gatekeeper, and other security definitions
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Install configuration data (e.g., XProtect, Gatekeeper)
# Options: true = auto-install (recommended), false = manual install
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true

# ---------------------------------------------------------------
# Software Update - Update Check Frequency
# ---------------------------------------------------------------

# How often to check for software updates (in days)
# Options: 1 = daily (recommended), 7 = weekly, etc.
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ScheduleFrequency -int 1

# ---------------------------------------------------------------
# App Store - Auto-Update Settings
# ---------------------------------------------------------------

# Automatically download apps purchased on other Macs
# Options: true = auto-download, false = manual download
# defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

# Automatically install app updates that require a restart
# Options: true = auto-install with restart, false = manual install
# sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool false

# ---------------------------------------------------------------
# Restart Notification Settings
# ---------------------------------------------------------------

# Automatically restart after installing updates (if required)
# Options: true = auto-restart, false = prompt user (more control)
# Note: Use with caution - auto-restart may close unsaved work
# sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallRestart -bool false

# ---------------------------------------------------------------
# Note: These settings require administrator privileges
# You may be prompted for your password when running this script
# ---------------------------------------------------------------
