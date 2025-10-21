#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create backup directory on Desktop
BACKUP_DIR="$HOME/Desktop/my_settings_backups"
mkdir -p "$BACKUP_DIR"
# Get current datetime for filenames
DATETIME=$(date +"%Y%m%d_%H%M%S")

# Backup domains from backup-domains.txt
BACKUP_DOMAINS_FILE="$SCRIPT_DIR/backup-domains.txt"

while IFS= read -r domain; do
    # Skip empty lines and comments
    [[ "$domain" =~ ^[[:space:]]*#.*$ || -z "$domain" ]] && continue
    filename="${domain//./_}_${DATETIME}.txt"
    defaults read "$domain" > "$BACKUP_DIR/$filename" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo "Domain $domain not found or inaccessible. Skipping."
    fi
done < "$BACKUP_DOMAINS_FILE"

