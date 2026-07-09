#!/bin/bash

# Check if exactly two arguments are providedd
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file_or_directory> <search_string>"
    exit 1
fi

path=$1
search=$2

# Check if the path exists
if [ ! -e "$path" ]; then
    echo "Error: File or directory does not exist."
    exit 1
fi

# If the path is a file
if [ -f "$path" ]; then
    grep -n "$search" "$path"

# If the path is a directory
elif [ -d "$path" ]; then
    grep -rn "$search" "$path"

else
    echo "Error: Invalid file or directory."
fi
