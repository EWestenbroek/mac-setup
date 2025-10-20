#!/bin/bash

# ---------------------------------------------------------------
# Menu Bar Item Visibility (Control Center)
# ---------------------------------------------------------------

# Wi-Fi
# Options: true = show in menu bar, false = hide (show in Control Center only)
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true

# Bluetooth
# Options: true = show in menu bar, false = hide (show in Control Center only)
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true

# AirDrop
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible AirDrop" -bool false

# Focus (Do Not Disturb)
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible DoNotDisturb" -bool false

# Keyboard Brightness
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -bool false

# Screen Mirroring
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible ScreenMirroring" -bool false

# Display (Brightness)
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible Display" -bool false

# Sound (Volume)
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true

# Now Playing
# Options: true = show in menu bar, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false

# ---------------------------------------------------------------
# Menu Bar - Battery
# ---------------------------------------------------------------

# Show Battery in menu bar
# Options: true = show, false = hide
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true

# Battery display mode in menu bar
# Options: "ShowPercent" = show percentage, "ShowIcon" = icon only
# Note: Use the percentage setting below for more control
defaults write com.apple.controlcenter BatteryShowPercentage -bool true

# ---------------------------------------------------------------
# Menu Bar - Battery Percentage
# ---------------------------------------------------------------

# Show battery percentage in menu bar
# Options: "YES" = show percentage, "NO" = icon only
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Show battery time remaining
# Options: true = show time, false = don't show
# Note: This may not be available on all Mac models
# defaults write com.apple.menuextra.battery ShowTime -string "YES"

# ---------------------------------------------------------------
# Menu Bar - Clock & Date
# ---------------------------------------------------------------

# Clock display format
# Common formats:
#   "EEE d MMM HH:mm" = "Mon 20 Jan 14:30" (day, date, month, time)
#   "d MMM HH:mm" = "20 Jan 14:30" (date, month, time - no day)
#   "EEE HH:mm" = "Mon 14:30" (day and time only)
#   "HH:mm" = "14:30" (time only)
#   "h:mm a" = "2:30 PM" (12-hour format with AM/PM)
# You can customize with: EEE=day, d=date, MMM=month, HH=hour(24h), mm=minute, a=AM/PM
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm"

# Show AM/PM (for 12-hour format)
# Options: "YES" = show AM/PM, "NO" = don't show (use with 12-hour format)
# defaults write com.apple.menuextra.clock ShowAMPM -bool true

# Use 24-hour clock
# Options: true = 24-hour (e.g., 14:30), false = 12-hour (e.g., 2:30 PM)
defaults write com.apple.menuextra.clock Show24Hour -bool true

# Show the day of the week
# Options: true = show (e.g., "Mon"), false = hide
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true

# Show the date
# Options: 1 = always show, 2 = show when space permits, 0 = never show
defaults write com.apple.menuextra.clock ShowDate -int 1

# Show seconds in menu bar clock
# Options: true = show seconds, false = hide
defaults write com.apple.menuextra.clock ShowSeconds -bool false

# Flash time separators (the colon blinks every second)
# Options: true = flash, false = static
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

# Analog clock (if you prefer analog over digital)
# Options: true = analog, false = digital
# defaults write com.apple.menuextra.clock IsAnalog -bool false

# ---------------------------------------------------------------
# Menu Bar - Spotlight
# ---------------------------------------------------------------

# Hide Spotlight icon from menu bar
# Method 1: Change permissions (more reliable)
# Note: You can still access Spotlight via Command+Space keyboard shortcut
# sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

# Method 2: Using defaults (works on some macOS versions)
# Options: true = show, false = hide
# defaults write com.apple.Spotlight "NSStatusItem Visible Item-0" -bool false

# ---------------------------------------------------------------
# Menu Bar - Siri
# ---------------------------------------------------------------

# Show Siri in menu bar
# Options: true = show, false = hide
defaults write com.apple.Siri StatusMenuVisible -bool false

# ---------------------------------------------------------------
# Menu Bar - Time Machine
# ---------------------------------------------------------------

# Show Time Machine in menu bar
# Options: true = show, false = hide
# defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool true

# ---------------------------------------------------------------
# Menu Bar - User (Fast User Switching)
# ---------------------------------------------------------------

# Show user name in menu bar (fast user switching)
# Options: true = show full name, false = hide
# defaults write com.apple.menuextra.useraccount ShowFullName -bool true

# ---------------------------------------------------------------
# Menu Bar - VPN
# ---------------------------------------------------------------

# Show VPN status in menu bar
# Options: true = show, false = hide
# defaults write com.apple.networkConnect VPNShowStatus -bool true

# ---------------------------------------------------------------
# Menu Bar - General Settings
# ---------------------------------------------------------------

# Automatically hide and show the menu bar
# Options: "Always" = always hide, "Desktop" = hide on desktop only, "Never" = always show
# defaults write NSGlobalDomain _HIHideMenuBar -bool false

# Menu bar flash when alert sound occurs
# Options: true = flash, false = no flash
# defaults write com.apple.sound.beep.flash -bool false

# ---------------------------------------------------------------
# Restart Control Center and SystemUIServer to apply changes
killall ControlCenter || true
killall SystemUIServer || true
# ---------------------------------------------------------------
