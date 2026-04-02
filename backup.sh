#!/bin/bash

# Exit immediately if any command fails
set -e

# Input from user
read -p "Enter directory to backup: " source_dir
read -p "Enter destination directory: " backup_dir

# Check if source exists
if [[ ! -d "$source_dir" ]]; then
    echo "❌ Source directory does not exist!"
    exit 1
fi

# Create destination if not exists
mkdir -p "$backup_dir"

# Generate timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Extract folder name
folder_name=$(basename "$source_dir")

# Backup file name
backup_file="${backup_dir}/${folder_name}_backup_${timestamp}.tar.gz"

# Create compressed archive (cleaner path handling)
tar -czf "$backup_file" -C "$(dirname "$source_dir")" "$folder_name"

# Success message
echo "✅ Backup successful!"
echo "📁 File created: $backup_file"
	
