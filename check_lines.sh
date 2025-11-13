#!/bin/bash
# Script to count lines, words, and characters in a file

# Ask user for file name
read -p "Enter the file name: " filename

# Check if file exists
if [ -f "$filename" ]; then
    # Use wc command to count lines, words, and characters
    echo "File statistics for '$filename':"
    echo "--------------------------------"
    echo "Lines: $(wc -l < "$filename")"
    echo "Words: $(wc -w < "$filename")"
    echo "Characters: $(wc -m < "$filename")"
else
    echo "Error: File '$filename' not found!"
fi
