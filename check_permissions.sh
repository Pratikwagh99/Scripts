#!/bin/bash

# Check if a filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

# Check if the file exists
if [ ! -e "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Check owner permissions
if [ -r "$file" ]; then
    echo "Owner has READ permission."
else
    echo "Owner does NOT have READ permission."
fi

if [ -w "$file" ]; then
    echo "Owner has WRITE permission."
else
    echo "Owner does NOT have WRITE permission."
fi

if [ -x "$file" ]; then
    echo "Owner has EXECUTE permission."
else
    echo "Owner does NOT have EXECUTE permission."
fi
