#!/bin/bash

# Input from user
read -p "Enter command/script to schedule: " command
read -p "Enter minute (0-59): " minute
read -p "Enter hour (0-23): " hour
read -p "Enter day of month (1-31 or *): " dom
read -p "Enter month (1-12 or *): " month
read -p "Enter day of week (0-7 or *): " dow

# Create cron job
cron_job="$minute $hour $dom $month $dow $command"

# Add to crontab
(crontab -l 2>/dev/null; echo "$cron_job") | crontab -

echo "✅ Task scheduled successfully!"
echo "🕒 Cron Job: $cron_job"

