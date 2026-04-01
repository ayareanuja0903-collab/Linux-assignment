#!/bin/bash

# check arguments
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: $0 <PID> [--force]"
    exit 1
fi

PID="$1"
FORCE=false

# check if --force flag is passed
if [ "$2" = "--force" ]; then
    FORCE=true
fi

# validate PID
if ! [[ "$PID" =~ ^[0-9]+$ ]]; then
    echo "Error: PID must be a number."
    exit 1
fi

# check if process exists
if ! ps -p "$PID" > /dev/null 2>&1; then
    echo "Error: No process found with PID $PID."
    exit 1
fi

# confirmation (only if not forced)
if [ "$FORCE" = false ]; then
    read -p "Are you sure you want to kill process $PID? (y/n): " confirm

    if [ "$confirm" != "y" ]; then
        echo "Cancelled."
        exit 0
    fi
fi

echo "Processing..."

# try to terminate
kill "$PID"

sleep 1

# final check
if ps -p "$PID" > /dev/null 2>&1; then
    echo "Process still running. Trying force kill..."
    kill -9 "$PID"
fi

if ps -p "$PID" > /dev/null 2>&1; then
    echo "Failed to terminate process $PID"
else
    echo "Process $PID terminated successfully."
fi
