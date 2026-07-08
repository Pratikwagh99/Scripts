#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <PID>"
    exit 1
fi

pid=$1

# Check if the process exists
if ps -p "$pid" > /dev/null; then
    # Terminate the process
    kill "$pid"

    if [ $? -eq 0 ]; then
        echo "Process $pid terminated successfully."
    else
        echo "Failed to terminate process $pid."
    fi
else
    echo "Error: Process with PID $pid does not exist."
fi
