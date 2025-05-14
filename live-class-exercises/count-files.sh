#!/bin/bash

# This script counts the number of files in a given directory.
# Usage: ./count-files.sh <absolute_directory_path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <absolute_directory_path>"
  exit 1
fi

# Get the directory path from the command line argument

DIR="$1"

# Check if the directory exists

if [ ! -d "$DIR" ]; then
  echo "Directory '$DIR' does not exist."
  exit 1
fi

# Count the number of files in the directory
FILE_COUNT=$(find "$DIR" -type f | wc -l)

# Print the number of files
echo "There are $FILE_COUNT files in '$DIR'."
