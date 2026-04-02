#!/bin/bash

# File name
read -p "Enter a file name: " file_name
file="$file_name"

# Check if file exists
if [[ ! -f "$file" ]]; then
    echo "❌ File does not exist!"
    exit 1
fi

# Input words
read -p "Enter word to replace: " old_word
read -p "Enter new word: " new_word

# Replace all occurrence

sed -i "s/$old_word/$new_word/g" "$file"

echo "✅ Replacement completed successfully!"
