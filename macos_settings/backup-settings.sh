#!/bin/bash

# Create backup directory on Desktop
BACKUP_DIR="$HOME/Desktop/my_settings_backups"
mkdir -p "$BACKUP_DIR"
# Get current datetime for filenames
DATETIME=$(date +"%Y%m%d_%H%M%S")

# Backup domains from backup_domains.txt
if [ -f "backup_domains.txt" ]; then
    while IFS= read -r domain; do
        # Skip empty lines and comments
        [[ "$domain" =~ ^[[:space:]]*#.*$ || -z "$domain" ]] && continue
        filename="${domain//./_}_${DATETIME}.txt"
        defaults read "$domain" > "$BACKUP_DIR/$filename" 2>/dev/null
        if [ $? -ne 0 ]; then
            echo "Domain $domain not found or inaccessible. Skipping."
        fi
    done < "backup_domains.txt"
fi

