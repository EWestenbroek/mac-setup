#!/bin/bash

# Global settings
# System appearance
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"  # default Light
# Disable double-click titlebar to minimize
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool false  # default true
# Key repeat settings
defaults write NSGlobalDomain KeyRepeat -int 2  # default 1 (= slower)
defaults write NSGlobalDomain InitialKeyRepeat -int 15  # default 15 (same)
# Disable double space to period
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false  # default true
# Disable swipe navigation with scrolls
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false  # default true
# Trackpad speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 2  # default 1 (= slower)
# Mouse settings
defaults write NSGlobalDomain com.apple.mouse.scaling -int 2  # default 3 (1 = slow, 5 = fast)
defaults write NSGlobalDomain com.apple.mouse.scrollDirection -bool false  # default true (disable natural scrolling)
defaults write NSGlobalDomain com.apple.mouse.doubleClickThreshold -float 0.5  # default 0.5 (double-click speed)
# Springing (folder open delay)
defaults write NSGlobalDomain com.apple.springing.delay -float 0.5  # default 0.5
defaults write NSGlobalDomain com.apple.springing.enabled -bool true  # default false
# Disable screen flash on alert sound
defaults write NSGlobalDomain com.apple.sound.beep.flash -bool true  # default true
# Font anti-aliasing threshold
defaults write NSGlobalDomain AppleAntiAliasingThreshold -int 4  # default 6
# Custom text replacements
defaults write NSGlobalDomain NSUserDictionaryReplacementItems -array \
  '{"on"=1;"replace"="izjz";"with"="Ik zie je zo!";}' \
  '{"on"=1;"replace"="exht";"with"="echt";}' \
  '{"on"=1;"replace"="soen";"with"="doen";}' \
  '{"on"=1;"replace"="biet";"with"="niet";}'
# Default web search engine
defaults write NSGlobalDomain NSPreferredWebServices -dict-add NSWebServicesProviderWebSearch '{
  NSDefaultDisplayName = Google;
  NSProviderIdentifier = "com.google.www";
}'

