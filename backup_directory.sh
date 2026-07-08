#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory=$1

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Generate timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create backup filename
backup_file="$(basename "$directory")_$timestamp.tar.gz"

# Create the compressed backup
tar -czf "$backup_file" "$directory"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Error: Backup failed."
fi
