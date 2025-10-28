#!/usr/bin/env bash
# backup-vscode.sh — export VS Code preferences on macOS

BACKUP_DIR="$HOME/vscode-backup"
BACKUP_DIR="./current-vscode-backup"
mkdir -p "$BACKUP_DIR"

# Detect VS Code user folder
if [ -d "$HOME/Library/Application Support/Code/User" ]; then
  VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
elif [ -d "$HOME/Library/Containers/com.microsoft.VSCode/Data/Library/Application Support/Code/User" ]; then
  VSCODE_USER_DIR="$HOME/Library/Containers/com.microsoft.VSCode/Data/Library/Application Support/Code/User"
else
  echo "❌ Could not find VS Code settings directory."
  exit 1
fi

echo "📁 Found VS Code settings in: $VSCODE_USER_DIR"

# Copy user settings and keybindings
cp -v "$VSCODE_USER_DIR/settings.json" "$BACKUP_DIR/settings.json" 2>/dev/null || echo "⚠️ No settings.json found."
cp -v "$VSCODE_USER_DIR/keybindings.json" "$BACKUP_DIR/keybindings.json" 2>/dev/null || echo "⚠️ No keybindings.json found."

# Export extensions
if command -v code &>/dev/null; then
  code --list-extensions > "$BACKUP_DIR/extensions.txt"
  echo "✅ Extensions list exported."
else
  echo "⚠️ VS Code CLI not found. Open VS Code and run 'Shell Command: Install 'code' command in PATH'."
fi

echo "🎉 Backup complete! Files saved in: $BACKUP_DIR"
