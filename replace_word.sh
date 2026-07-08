#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <old_word> <new_word>"
    exit 1
fi

old_word=$1
new_word=$2
file="data.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: $file does not exist."
    exit 1
fi

# Replace all occurrences
sed -i "s/$old_word/$new_word/g" "$file"

echo "All occurrences of '$old_word' have been replaced with '$new_word' in $file."
