#!/bin/bash

# ---------------------------------------------------------------
# Trackpad 
# Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
# Disable drag lock
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 0
# Disable dragging (three-finger drag)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 0
# Set HID scroll zoom modifier mask
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad HIDScrollZoomModifierMask -int 262144
# Disable corner secondary click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 0
# Five-finger pinch gesture (App Expose)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2
# Four-finger horizontal swipe gesture (Switch Spaces)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2
# Four-finger pinch gesture (Launchpad)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
# Four-finger vertical swipe gesture (Mission Control)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
# Enable hand resting
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHandResting -int 1
# Enable horizontal scroll
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHorizScroll -int 1
# Enable momentum scroll
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadMomentumScroll -int 1
# Enable pinch to zoom
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -int 1
# Enable right-click (two-finger click)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -int 1
# Enable rotate gesture
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -int 1
# Enable scrolling
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadScroll -int 1
# Disable three-finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 0
# Three-finger horizontal swipe gesture (Switch Applications)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2
# Disable three-finger tap gesture (Lookup)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0
# Three-finger vertical swipe gesture (Mission Control)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 2
# Enable two-finger double-tap gesture (Smart Zoom)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1
# Two-finger swipe from right edge gesture (Notification Center)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
# Do not stop trackpad when USB mouse is connected
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad USBMouseStopsTrackpad -int 0
# Enable user preferences
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad UserPreferences -int 1



# ---------------------------------------------------------------
# Mouse
# Set mouse tracking speed (1 = slow, 3 = default, 5 = fast)
defaults write NSGlobalDomain com.apple.mouse.scaling -int 3
# Disable natural scrolling for mouse
defaults write NSGlobalDomain com.apple.mouse.scrollDirection -bool false


# ---------------------------------------------------------------
# Restart mouse and trackpad drivers to apply changes
sudo pkill -HUP AppleBluetoothMultitouchTrackpad
# ---------------------------------------------------------------