#!/bin/bash


# The directory to be processed
directory=""

# Directories where files will be moved
above_dir="${directory}/above"
stairs_dir="${directory}/stairs"
door_dir="${directory}/door"

# Create the directories if they don't exist
mkdir -p "$above_dir"
mkdir -p "$stairs_dir"
mkdir -p "$door_dir"

# Process each file in the directory
for file in "$directory"/*; do
    echo "Processing file: $file"
    if [[ $file == *_above* ]]; then
        echo "Moving $file to $above_dir"
        mv "$file" "$above_dir"
    elif [[ $file == *_stairs* ]]; then
        echo "Moving $file to $stairs_dir"
        mv "$file" "$stairs_dir"
    elif [[ $file == *_door* ]]; then
        echo "Moving $file to $door_dir"
        mv "$file" "$door_dir"
    fi
done
