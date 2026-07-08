#!/bin/bash

# Prompt the user for a filename
read -p "Enter a filename or directory name: " name

# Check if it exists
if [ -e "$name" ]; then
    echo "'$name' exists."

    # Check if it is a regular file
    if [ -f "$name" ]; then
        echo "'$name' is a regular file."

    # Check if it is a directory
    elif [ -d "$name" ]; then
        echo "'$name' is a directory."

    else
        echo "'$name' exists but is neither a regular file nor a directory."
    fi
else
    echo "'$name' does not exist."
fi
