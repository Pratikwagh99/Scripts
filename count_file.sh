#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <text_file>"
    exit 1
fi

file=$1

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Display the counts
echo "File: $file"
echo "Lines: $(wc -l < "$file")"
echo "Words: $(wc -w < "$file")"
echo "Characters: $(wc -m < "$file")"
