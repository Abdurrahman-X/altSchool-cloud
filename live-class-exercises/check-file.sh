#!/bin/bash

# Check if the correct number of arguments is provided

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

file="$1"

# Check if the file exists
if [ -f "$file" ]; then
  echo "File '$file' exists."
else
  echo "File '$file' does not exist."
fi
