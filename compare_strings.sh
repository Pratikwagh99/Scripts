#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <string1> <string2>"
    exit 1
fi

# Compare the strings
if [ "$1" = "$2" ]; then
    echo "The strings are equal."
else
    echo "The strings are different."
fi
