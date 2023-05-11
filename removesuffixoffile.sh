#!/bin/bash

# The directories to be processed PUT IN:
directories=("")

# Process each directory
for directory in "${directories[@]}"; do
    # Process each file in the directory
    for file in "$directory"/*; do
        echo "Processing file: $file"
        # Get the base filename without the extension
        base_name=$(basename "$file" .png)
        # Remove the suffix from the base filename
        new_base_name=$(echo "$base_name" | sed -e 's/_door//' -e 's/_stairs//' -e 's/_above//')
        # Construct the new filename with the directory and extension
        new_name="$directory/$new_base_name.png"
        # Only rename the file if the new name is different
        if [[ "$file" != "$new_name" ]]; then
            echo "Renaming $file to $new_name"
            mv "$file" "$new_name"
        fi
    done
done
