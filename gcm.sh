#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commit_message>"
    exit 1
fi

# Get the commit message from the command line argument
commit_message="$1"

# Perform the git commit
git commit -m "$commit_message"
