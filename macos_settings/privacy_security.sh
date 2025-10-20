#!/bin/bash

# ---------------------------------------------------------------
# USB Accessories Settings
# ---------------------------------------------------------------

# Allow accessories to connect
# Options: 1 = Allow, 2 = Ask for new accessories (default), 3 = Deny
sudo defaults write /Library/Preferences/com.apple.security.accessory mode -int 2

# ---------------------------------------------------------------
# FileVault (Full Disk Encryption)
# ---------------------------------------------------------------

# Enable FileVault
# Note: This will require a restart and user interaction to complete setup
# The recovery key will be displayed - make sure to save it securely
# sudo fdesetup enable

# Alternative: Check if FileVault is already enabled
# fdesetup status

# ---------------------------------------------------------------
# Privacy & Security - Analytics & Improvements
# ---------------------------------------------------------------

# Share Mac Analytics with Apple
# Options: true = enable sharing, false = disable sharing (more private)
sudo defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist AutoSubmit -bool false

# Share iCloud Analytics
# Options: true = enable sharing, false = disable sharing (more private)
# Note: This also affects Siri data sharing
defaults write com.apple.assistant.support "Siri Data Sharing Opt-In Status" -int 2

# Share Search Queries with Apple (iCloud Analytics)
# Options: 1 = enabled, 2 = disabled (more private)
defaults write com.apple.assistant.support "Search Queries Data Sharing Status" -int 2

# Improve Siri & Dictation
# Options: true = share audio recordings, false = don't share (more private)
defaults write com.apple.assistant.support "Improve Siri and Dictation" -bool false

# Share with App Developers
# Options: true = share crash/usage data with app developers, false = don't share (more private)
sudo defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist ThirdPartyDataSubmit -bool false

# Crash Reporter Dialog
# Options: "none" = don't show, "developer" = show developer options, "basic" = basic dialog
defaults write com.apple.CrashReporter DialogType -string "none"

# ---------------------------------------------------------------
# Apple Advertising
# ---------------------------------------------------------------

# Personalized Ads
# Options: true = allow personalized ads, false = disable (more private)
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false

# Limit Ad Tracking
# Options: true = force limit tracking (more private), false = allow tracking
defaults write com.apple.AdLib forceLimitAdTracking -bool true

# ---------------------------------------------------------------
# Location Services
# ---------------------------------------------------------------

# Location Services (Master Toggle)
# Options: 1 = enabled, 0 = disabled (more private)
# Note: This requires elevated permissions on newer macOS versions
sudo defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd LocationServicesEnabled -int 0

# Show location icon in menu bar when location is being accessed
# Options: true = show icon (more transparent), false = hide icon
defaults write com.apple.locationmenu ShowSystemServices -bool true

# Location-Based Suggestions (Spotlight, Safari, etc.)
# Options: true = enabled, false = disabled (more private)
defaults write com.apple.locationd LocationServicesEnabled -bool false

# Location-Based Apple Ads
# Options: true = enabled, false = disabled (more private)
defaults write com.apple.locationd.plist LocationServicesEnabled -bool false

# Significant Locations (Frequent Locations tracking)
# Options: true = track frequent locations, false = disabled (more private)
# This is used for traffic routing, location-based reminders, etc.
sudo defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd SignificantLocations -bool false

# Location-Based Alerts
# Options: true = enabled, false = disabled
defaults write com.apple.locationd.plist LocationServicesEnabled -bool false

# HomeKit Location Services
# Options: true = enabled, false = disabled
# Note: Disabling may affect HomeKit automation based on location
# defaults write com.apple.locationd.plist LocationServicesEnabled -bool false

# System Services - Time Zone & System Customization
# Options: true = auto-set time zone, false = manual (more private)
# sudo defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd "SystemCustomization" -bool false

# ---------------------------------------------------------------
# Siri & Dictation
# ---------------------------------------------------------------

# Ask Siri
# Options: true = enabled, false = disabled (more private)
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

# Show Siri in menu bar
# Options: true = show, false = hide
defaults write com.apple.Siri StatusMenuVisible -bool false

# User has declined Siri
# Options: true = declined, false = not declined
defaults write com.apple.Siri UserHasDeclinedEnable -bool true

# Siri voice feedback
# Options: 1 = always on, 2 = hands-free only, 3 = off
defaults write com.apple.assistant.backedup "Use device speaker for TTS" -int 3

# Listen for "Hey Siri"
# Options: true = enabled, false = disabled (more private)
defaults write com.apple.Siri VoiceTriggerUserEnabled -bool false

# Allow Siri when locked
# Options: true = allowed, false = disabled (more secure)
defaults write com.apple.assistant.support "Assistant Allowed While Locked" -bool false

# ---------------------------------------------------------------
# Handoff & Continuity
# ---------------------------------------------------------------

# Allow Handoff between this Mac and your iCloud devices
# Options: true = enabled, false = disabled (more private)
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd.plist ActivityAdvertisingAllowed -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd.plist ActivityReceivingAllowed -bool false

# AirDrop discoverability
# Options: "Everyone" = discoverable by anyone, "Contacts Only" = only contacts, "Off" = not discoverable
# defaults write com.apple.NetworkBrowser DisableAirDrop -bool true

# ---------------------------------------------------------------
# Bluetooth
# ---------------------------------------------------------------

# Bluetooth power state
# Options: 1 = on, 0 = off (more private, but disables all Bluetooth devices)
# Note: This will turn off Bluetooth completely
sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0

# Show Bluetooth in menu bar
# Options: true = show, false = hide
# defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true

# ---------------------------------------------------------------
# Firewall Settings
# ---------------------------------------------------------------

# Firewall state
# Options: 0 = off, 1 = on for specific services, 2 = on for essential services (more secure)
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# Stealth mode (don't respond to ICMP ping requests or connection attempts)
# Options: 1 = enabled (more secure), 0 = disabled
sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -int 1

# Automatically allow built-in software to receive incoming connections
# Options: 1 = allow (default), 0 = block (more secure)
sudo defaults write /Library/Preferences/com.apple.alf allowdownloadsignedenabled -int 0

# Automatically allow downloaded signed software to receive incoming connections
# Options: 1 = allow, 0 = block (more secure)
sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -int 1

# Firewall logging
# Options: 1 = enabled (helps monitor activity), 0 = disabled
sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -int 1

# Firewall logging detail level
# Options: "detail" = detailed logging, "brief" = brief logging
sudo defaults write /Library/Preferences/com.apple.alf loggingOption -string "detail"

# ---------------------------------------------------------------
# Gatekeeper Settings (App Store and downloaded apps)
# ---------------------------------------------------------------

# Enable Gatekeeper (prevents unverified apps from running)
# This is the master switch for app security
sudo spctl --master-enable

# Gatekeeper assessment (enforces security policies for downloaded apps)
# Options: --enable = enforce policies (more secure), --disable = don't enforce
sudo spctl --enable

# Note: To temporarily allow an app from an unidentified developer:
# Right-click the app > Open (first time only)
# Or use: sudo spctl --add /path/to/app.app

# ---------------------------------------------------------------
# Safari Privacy Settings
# ---------------------------------------------------------------

# Prevent cross-site tracking
# Options: true = enabled (more private), false = disabled
defaults write com.apple.Safari WebKitPreferences.storageBlockingPolicy -int 1

# Hide IP address from trackers
# Options: true = hide (more private), false = don't hide
defaults write com.apple.Safari WebKitPreferences.privateClickMeasurementEnabled -bool false

# Send "Do Not Track" header to websites
# Options: true = send header (more private), false = don't send
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# AutoFill - User names and passwords
# Options: true = enabled, false = disabled (more secure if using password manager)
defaults write com.apple.Safari AutoFillPasswords -bool false

# AutoFill - Credit cards
# Options: true = enabled, false = disabled (more secure)
defaults write com.apple.Safari AutoFillCreditCardData -bool false

# AutoFill - Other forms (contact info, etc.)
# Options: true = enabled, false = disabled
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Block pop-up windows
# Options: true = don't block, false = block pop-ups (more secure)
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Warn when visiting a fraudulent website
# Options: true = enabled (more secure), false = disabled
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Safari Suggestions (shows suggestions in address bar)
# Options: true = enabled, false = disabled (more private)
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Preload Top Hit in the background
# Options: true = preload, false = don't preload (more private)
defaults write com.apple.Safari PreloadTopHit -bool false

# Open "safe" files automatically after downloading
# Options: true = auto-open, false = don't auto-open (more secure)
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Enable password autofill on websites
# Options: true = enabled, false = disabled (more secure with password manager)
defaults write com.apple.Safari AutoFillPasswords -bool false

# Check for Apple Pay
# Options: true = enabled, false = disabled
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2ApplePayEnabled -bool true

# Allow websites to check for Apple Pay and Apple Card
# Options: true = allowed, false = not allowed (more private)
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2ApplePayCapabilityDisclosureAllowed -bool false

# ---------------------------------------------------------------
# Screen Saver & Lock Screen Settings
# ---------------------------------------------------------------

# Require password after sleep or screen saver begins
# Options: 1 = require password (more secure), 0 = don't require
defaults write com.apple.screensaver askForPassword -int 1

# Delay before password is required (in seconds)
# Options: 0 = immediate (most secure), 5 = 5 seconds, 60 = 1 minute, 300 = 5 minutes, etc.
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Start screen saver after idle time (in seconds)
# Options: 60 = 1 minute, 300 = 5 minutes, 600 = 10 minutes, 1200 = 20 minutes, 0 = never
defaults -currentHost write com.apple.screensaver idleTime -int 300

# Show message on lock screen
# Options: Set custom text or comment out to disable
# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "If found, please contact: your@email.com"

# ---------------------------------------------------------------
# Login Window & User Account Settings
# ---------------------------------------------------------------

# Guest account login
# Options: true = enabled, false = disabled (more secure)
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

# Show password hints
# Options: 0 = never show, 3 = after 3 attempts, etc.
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0

# Disable automatic login
# This prevents the Mac from automatically logging in to a user account
sudo defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser 2>/dev/null

# Show username and password fields (instead of user list)
# Options: true = show name/password fields (more secure), false = show user list
# sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool true

# Disable fast user switching
# Options: false = disabled, true = enabled
# sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool false

# ---------------------------------------------------------------
# Remote Access Settings
# ---------------------------------------------------------------

# Remote Apple Events (allows other computers to send Apple Events)
# Options: on / off (off is more secure)
sudo systemsetup -setremoteappleevents off

# Remote Login (SSH access)
# Options: on / off (off is more secure unless you need SSH)
sudo systemsetup -setremotelogin off

# Remote Management (Apple Remote Desktop)
# Options: on / off (off is more secure)
# sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -stop

# Wake for network access (allows Mac to wake from sleep for network activity)
# Options: on / off (off is more secure and saves battery)
sudo systemsetup -setwakeonnetworkaccess off

# ---------------------------------------------------------------
# Network & Connectivity Settings
# ---------------------------------------------------------------

# Bonjour multicast advertisements (allows discovery on local network)
# Options: true = disable advertisements (more private), false = enable
sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool true

# Captive portal detection (auto-opens browser for WiFi login pages)
# Options: false = disabled (more private), true = enabled (more convenient)
# Note: Disabling prevents automatic detection of login pages at hotels, airports, etc.
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control.plist Active -bool false

# ---------------------------------------------------------------
# Hardware & Peripheral Settings
# ---------------------------------------------------------------

# IR (Infrared) remote control
# Options: true = enabled, false = disabled (more secure)
sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

# Disable media sharing
# Options: true = disable (more private), false = enable
# sudo defaults write com.apple.amp.mediasharingd home-sharing-enabled 0
# sudo defaults write com.apple.amp.mediasharingd public-sharing-enabled 0

# ---------------------------------------------------------------
# Restart services to apply changes
sudo killall -HUP mDNSResponder || true
killall SystemUIServer || true
killall cfprefsd || true
# ---------------------------------------------------------------
