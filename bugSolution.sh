#!/bin/bash

# Improved script with error handling

file_to_process="/path/to/your/file.txt"

# Check if the file exists and is readable
if [ ! -r "$file_to_process" ]; then
  echo "Error: File '$file_to_process' does not exist or is not readable." >&2
  exit 1
fi

# Process the file
output=$(cat "$file_to_process")

if [ $? -ne 0 ]; then
  echo "Error: Could not read file '$file_to_process'." >&2
  exit 1
fi

echo "Output: $output"