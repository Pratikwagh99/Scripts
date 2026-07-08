#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <pattern>"
    exit 1
fi

pattern=$1

# Check if data.txt exists
if [ ! -f "data.txt" ]; then
    echo "Error: data.txt does not exist."
    exit 1
fi

# Search for the pattern and print a custom message
awk -v pat="$pattern" '
$0 ~ pat {
    print "Matched Line: " $0
}
' data.txt
