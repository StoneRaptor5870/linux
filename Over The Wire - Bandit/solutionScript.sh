#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <LevelN> <message>"
  exit 1
fi

# Get the directory level and the message from the arguments
level=$1
message=$2

# Extract the level number from the directory name
n=$(echo $level | grep -o -E '[0-9]+')

# Increment the level number by 1 for banditN+1
n_plus_1=$((n + 1))

# Create the directory (if it doesn't exist)
mkdir -p "$level"

# Write the message and the specific string to solution.txt in the specified directory
echo -e "$message for bandit$n_plus_1" > "$level/solution.txt"

echo "Message written to $level/solution.txt"