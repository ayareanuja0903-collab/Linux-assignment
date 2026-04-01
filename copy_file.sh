#!/bin/bash

# Check if exactly 2 arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_path>"
    exit 1
fi

SRC="$1"
DEST="$2"

# Check if source exists
if [ ! -e "$SRC" ]; then
    echo "Error: Source file does not exist."
    exit 1
fi

# Check if source is a regular file
if [ ! -f "$SRC" ]; then
    echo "Error: Source is not a regular file."
    exit 1
fi

# Check if destination directory exists
DEST_DIR=$(dirname "$DEST")

if [ ! -d "$DEST_DIR" ]; then
    echo "Error: Destination directory does not exist."
    exit 1
fi

# Perform copy
cp "$SRC" "$DEST"

# Check if copy was successful
if [ "$?" -eq 0 ]; then
    echo "File copied successfully to $DEST"
else
    echo "Error: Failed to copy file."
fi
