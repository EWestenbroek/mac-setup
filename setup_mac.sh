#!/bin/bash

# Exit on error, but continue with next command if a command fails
set +e

# Function to handle errors and continue
handle_error() {
    echo "Error: $1 failed. Continuing..."
}

# Apply macOS settings
if [ -f "macos-settings.sh" ]; then
    echo "Applying macOS settings..."
    if ! source macos-settings.sh; then
        handle_error "macOS settings"
    fi
else
    echo "macos-settings.sh not found. Skipping macOS settings."
fi

# Install Homebrew (if not installed)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    if ! /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
        handle_error "Homebrew installation"
    fi
fi

# Install apps from apps-to-install.txt
if [ -f "apps-to-install.txt" ]; then
    echo "Installing apps..."
    while IFS= read -r line; do
        # Skip empty lines and comments (lines starting with # or --)
        [[ "$line" =~ ^[[:space:]]*#.*$ || "$line" =~ ^[[:space:]]*--.*$ || -z "$line" ]] && continue

        # Install the app
        if ! brew install --cask "$line"; then
            handle_error "Installing $line"
        fi
    done < "apps-to-install.txt"
else
    echo "apps-to-install.txt not found. Skipping app installation."
fi

# Optional: Run developer setup
if [ -f "dev-setup.sh" ]; then
    read -p "Do you want to run the developer setup? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if ! source dev-setup.sh; then
            handle_error "Developer setup"
        fi
    else
        echo "Skipping developer setup."
    fi
else
    echo "dev-setup.sh not found. Skipping developer setup."
fi

echo "Setup complete! Please restart your MacBook for all changes to take effect."
