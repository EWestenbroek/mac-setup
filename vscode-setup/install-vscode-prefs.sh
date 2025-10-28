#!/usr/bin/env bash
# install-vscode-prefs.sh — restore VS Code preferences on macOS

BACKUP_DIR="$HOME/vscode-backup"

# Detect VS Code user folder
if [ -d "$HOME/Library/Application Support/Code/User" ]; then
  VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
elif [ -d "$HOME/Library/Containers/com.microsoft.VSCode/Data/Library/Application Support/Code/User" ]; then
  VSCODE_USER_DIR="$HOME/Library/Containers/com.microsoft.VSCode/Data/Library/Application Support/Code/User"
else
  echo "❌ Could not find VS Code settings directory."
  exit 1
fi

echo "📁 Installing to: $VSCODE_USER_DIR"

# Restore files
cp -v "$BACKUP_DIR/settings.json" "$VSCODE_USER_DIR/settings.json"
cp -v "$BACKUP_DIR/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"

# Reinstall extensions
if [ -f "$BACKUP_DIR/extensions.txt" ]; then
  cat "$BACKUP_DIR/extensions.txt" | xargs -L 1 code --install-extension
fi

echo "✅ VS Code preferences restored!"
