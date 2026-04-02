#!/bin/bash

# Input
read -p "Enter file to monitor: " file
read -p "Enter pattern to search: " pattern

# Check file exists
if [[ ! -f "$file" ]]; then
    echo "❌ File does not exist!"
    exit 1
fi

echo "📡 Monitoring '$file' for pattern '$pattern' (Press CTRL+C to stop)..."

# Real-time monitoring
tail -f "$file" | awk -v pat="$pattern" '
{
    if ($0 ~ pat) {
        print "🚨 [" strftime("%Y-%m-%d %H:%M:%S") "] ALERT at line " NR
        print "👉 " $0
        print "----------------------"
    }
}'
