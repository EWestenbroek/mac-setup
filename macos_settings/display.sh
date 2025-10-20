#!/bin/bash

# ---------------------------------------------------------------
# Display - Resolution & Scaling
# ---------------------------------------------------------------

# Show all resolutions in System Settings
# Options: true = show all available resolutions, false = show only recommended (default)
# Useful for accessing HiDPI and scaled resolutions
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# ---------------------------------------------------------------
# Display - Night Shift
# ---------------------------------------------------------------

# Enable Night Shift
# Options: true = enabled, false = disabled
# Note: Schedule is set separately below
defaults write com.apple.CoreBrightness "Night Shift Enabled" -bool true

# Night Shift schedule
# Options: 0 = off, 1 = sunset to sunrise, 2 = custom schedule
defaults write com.apple.CoreBrightness "Night Shift Schedule" -int 1

# Night Shift color temperature
# Options: Range from 0 (less warm) to 100 (more warm)
# Default is usually around 56
# defaults write com.apple.CoreBrightness "Night Shift Temperature" -int 56

# ---------------------------------------------------------------
# Display - True Tone
# ---------------------------------------------------------------

# Enable True Tone (adjusts display color based on ambient light)
# Options: true = enabled, false = disabled
# Note: Only works on Macs with True Tone hardware support
# defaults write com.apple.CoreBrightness "Display True Tone" -bool true

# ---------------------------------------------------------------
# Display - Brightness
# ---------------------------------------------------------------

# Automatically adjust brightness
# Options: true = auto-adjust based on ambient light, false = manual control
defaults write com.apple.BezelServices dAuto -bool true

# Brightness level (for built-in displays)
# Options: 0.0 (minimum) to 1.0 (maximum brightness)
# Note: This sets the brightness for the main display
# defaults write com.apple.BezelServices brightness -float 0.75

# ---------------------------------------------------------------
# Display - Color Profile
# ---------------------------------------------------------------

# Set color profile for display
# Common profiles: "sRGB IEC61966-2.1", "Display P3", "Adobe RGB (1998)"
# To list available profiles: ls /Library/ColorSync/Profiles/Displays/
# Note: Profile names are case-sensitive
# defaults write com.apple.ColorSync "DisplayProfile" -string "sRGB IEC61966-2.1"

# ---------------------------------------------------------------
# Display - Arrangement (Multiple Displays)
# ---------------------------------------------------------------

# Show mirroring options in menu bar when available
# Options: true = show, false = hide
defaults write com.apple.airplay showInMenuBarIfPresent -bool true

# Displays have separate Spaces (for multiple monitors)
# Options: true = each display has own spaces, false = all displays share spaces
# Requires logout/login to take effect
defaults write com.apple.spaces spans-displays -bool false

# ---------------------------------------------------------------
# Display - Rotation
# ---------------------------------------------------------------

# Rotate display (in degrees)
# Options: 0 = standard, 90 = rotated 90°, 180 = upside down, 270 = rotated 270°
# Note: This is typically set per-display in System Settings
# Use the displayplacer tool for more control over display rotation

# ---------------------------------------------------------------
# Display - Refresh Rate
# ---------------------------------------------------------------

# Note: Refresh rate is typically hardware-dependent
# Use System Settings > Displays or third-party tools to set refresh rate
# ProMotion displays (120Hz) can be configured to use lower rates

# ---------------------------------------------------------------
# Screenshots
# ---------------------------------------------------------------

# Screenshot save location
# Options: Set path to desired folder (default is ~/Desktop)
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Screenshot file format
# Options: "png" (default, lossless), "jpg" (smaller files), "pdf", "tiff", "bmp", "gif"
defaults write com.apple.screencapture type -string "png"

# Include date and time in screenshot filename
# Options: true = include timestamp, false = generic naming
defaults write com.apple.screencapture include-date -bool true

# Show screenshot thumbnail (floating preview after capture)
# Options: true = show thumbnail (allows quick edit/share), false = save directly
defaults write com.apple.screencapture show-thumbnail -bool true

# Disable shadow in window screenshots
# Options: true = no shadow (clean), false = include shadow (default)
defaults write com.apple.screencapture disable-shadow -bool false

# ---------------------------------------------------------------
# Screen Capture - Additional Settings
# ---------------------------------------------------------------

# Play sound when taking a screenshot
# Options: true = play sound, false = silent
# defaults write com.apple.screencapture playsound -bool false

# Screenshot thumbnail timeout (seconds before auto-save)
# Options: Number of seconds (e.g., 5, 10, etc.)
# defaults write com.apple.screencapture thumbnail-timeout -int 5

# ---------------------------------------------------------------
# Display Sleep
# ---------------------------------------------------------------

# Put display to sleep after X minutes of inactivity
# Options: 0 = never, 1-60+ = minutes
# Note: This affects battery life on laptops
sudo pmset -a displaysleep 10

# Prevent display sleep when charging (laptops)
# Options: 0 = allow sleep, 1 = prevent sleep
# sudo pmset -c displaysleep 0

# Different sleep times for battery vs. power adapter
# sudo pmset -b displaysleep 5   # 5 minutes on battery
# sudo pmset -c displaysleep 15  # 15 minutes on power adapter

# ---------------------------------------------------------------
# Display - Power Nap
# ---------------------------------------------------------------

# Power Nap (allows Mac to perform tasks while sleeping)
# Options: 1 = enabled, 0 = disabled
# sudo pmset -a powernap 1

# Power Nap on battery power
# sudo pmset -b powernap 0  # Disabled on battery to save power

# Power Nap on AC power
# sudo pmset -c powernap 1  # Enabled when plugged in

# ---------------------------------------------------------------
# External Displays
# ---------------------------------------------------------------

# Automatically switch to external display when connected
# Note: macOS handles this automatically, but you can use third-party tools
# for more granular control (e.g., cscreen, displayplacer)

# HDMI audio output when HDMI display is connected
# Options: true = auto-switch audio to HDMI, false = keep current audio output
# This is typically handled automatically by macOS

# ---------------------------------------------------------------
# Accessibility - Display
# ---------------------------------------------------------------

# Increase contrast
# Options: true = higher contrast (easier to read), false = standard
# defaults write com.apple.universalaccess increaseContrast -bool false

# Reduce transparency (makes UI elements more opaque)
# Options: true = reduce transparency (better performance/readability), false = standard
defaults write com.apple.universalaccess reduceTransparency -bool false

# Reduce motion (minimizes animations)
# Options: true = reduce motion (better for motion sensitivity, better performance), false = standard
defaults write com.apple.universalaccess reduceMotion -bool false

# Differentiate without color (adds shapes to color-coded items)
# Options: true = add shapes/icons, false = color only
# defaults write com.apple.universalaccess differentiateWithoutColor -bool false

# Invert colors
# Options: true = invert display colors, false = standard
# defaults write com.apple.universalaccess invertColors -bool false

# Display contrast level
# Options: 0.0 (standard) to 1.0 (maximum contrast)
# defaults write com.apple.universalaccess contrast -float 0.0

# Cursor size
# Options: 1.0 (standard) to 4.0 (very large)
# defaults write com.apple.universalaccess mouseDriverCursorSize -float 1.0

# Shake mouse pointer to locate
# Options: true = shake to enlarge cursor, false = disabled
defaults write com.apple.universalaccess CGDisableCursorLocationMagnification -bool false

# ---------------------------------------------------------------
# Display - Energy Saver (Legacy Settings)
# ---------------------------------------------------------------

# Automatically adjust display brightness in low light
# Options: true = auto-adjust, false = manual
# defaults write com.apple.BezelServices dAuto -bool true

# Slightly dim display on battery power
# Options: true = dim to save battery, false = full brightness
# sudo pmset -b lessbright 1

# ---------------------------------------------------------------
# Ambient Light Sensor
# ---------------------------------------------------------------

# Use ambient light sensor to adjust keyboard backlight
# Options: true = auto-adjust keyboard backlight, false = manual
# Note: Only on Macs with backlit keyboards
# defaults write com.apple.BezelServices kDim -bool true

# Turn off keyboard backlight after X seconds of inactivity
# Options: 0 = never turn off, 5-300 = seconds
# defaults write com.apple.BezelServices kDimTime -int 30

# ---------------------------------------------------------------
# Restart SystemUIServer to apply changes
killall SystemUIServer || true
# ---------------------------------------------------------------
