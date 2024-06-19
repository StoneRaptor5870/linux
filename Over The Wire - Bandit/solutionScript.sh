#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <LevelN> <message>"
  exit 1
fi

# get the directory level and the message from the arguments
level=$1
message=$2

# create the directory (if it doesn't exist) and write the message to solution.txt in the the specified directory
mkdir -p "$level" && echo "$message" > "$level/solution.txt"