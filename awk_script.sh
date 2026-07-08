#!/bin/bash

# Check if data.txt exists
if [ ! -f "data.txt" ]; then
    echo "Error: data.txt does not exist."
    exit 1
fi

# Print lines where the second field is greater than 10
awk '$2 > 10' data.txt
