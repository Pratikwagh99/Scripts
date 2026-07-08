#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <HH:MM> <script_path>"
    exit 1
fi

time=$1
script=$2

# Check if the script exists
if [ ! -f "$script" ]; then
    echo "Error: Script does not exist."
    exit 1
fi

# Extract hour and minute
hour=$(echo "$time" | cut -d: -f1)
minute=$(echo "$time" | cut -d: -f2)

# Add the cron job
(crontab -l 2>/dev/null; echo "$minute $hour * * * $script") | crontab -

echo "Cron job scheduled successfully."
echo "The script will run daily at $time."
