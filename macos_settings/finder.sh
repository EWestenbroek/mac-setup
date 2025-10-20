#!/bin/bash

# ---------------------------------------------------------------

# General Finder settings
defaults write com.apple.finder AppleShowAllFiles -bool true  # Also show 'hidden' files
defaults write com.apple.finder ShowPathbar -bool true  # Always show path bar
defaults write com.apple.finder ShowSidebar -bool true  # default true
defaults write com.apple.finder ShowStatusBar -bool false  # Turn off show available space
defaults write com.apple.finder ShowTabView -bool true  # Always show finder window tabs
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false  # default false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true  # default true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true  # default true
defaults write com.apple.finder FXPreferredViewStyle -string "icnv"  # Sets the default Finder view to icon view
defaults write com.apple.finder SidebarWidth -int 155  # default 180 (= wider)
defaults write com.apple.finder _FXSortFoldersFirst -bool true  # Sorts folders before files
defaults write com.apple.finder FXArrangeGroupViewBy -string "Name"  # default None
defaults write com.apple.finder FXArrangeBy -string "Name"  # Arranges icons by name (alphabetical order)
defaults write com.apple.finder _FXArrangeGroupViewBy -string "Name"  # Ensures consistent alphabetical sorting in all contexts
defaults write com.apple.finder _FXArrangeGroupViewByKind -string "Name"  # Ensures consistent alphabetical sorting in all contexts

# ---------------------------------------------------------------

# Icon view settings
defaults write com.apple.finder FXDefaultIconViewSettings -dict \
  iconSize -int 64 \
  gridSpacing -int 54 \
  arrangeBy -string "none" \
  labelOnBottom -bool true \
  showIconPreview -bool true \
  showItemInfo -bool false \
  textSize -int 12
# Defaults:
#   iconSize -int 64 \
#   gridSpacing -int 100 \
#   arrangeBy -string "none" \
#   labelOnBottom -bool true \
#   showIconPreview -bool true \
#   showItemInfo -bool true \
#   textSize -int 12

# ---------------------------------------------------------------

# List view settings
defaults write com.apple.finder FXDefaultListViewSettings -dict \
  iconSize -int 16 \
  textSize -int 13 \
  useRelativeDates -bool true \
  calculateAllSizes -bool false \
  sortColumn -string "name" \
  columns -dict-add \
    name -dict visible -bool true width -int 300 \
  columns -dict-add \
    dateModified -dict visible -bool true width -int 181 \
  columns -dict-add \
    size -dict visible -bool true width -int 97 \
  columns -dict-add \
    kind -dict visible -bool true width -int 115 \
  columns -dict-add \
    label -dict visible -bool true width -int 100 \
  columns -dict-add \
    version -dict visible -bool true width -int 75
# Defaults:
#   ** same as above **

# ---------------------------------------------------------------
# Restart Finder to apply changes
killall Finder || true
# ---------------------------------------------------------------
