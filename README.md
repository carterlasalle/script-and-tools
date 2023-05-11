# script-and-tools

This repository is a collection of various scripts written in Python, Shell (.sh), and other languages. The scripts perform a variety of tasks and you can use them as per your requirements. 

Please note that these scripts don't accept arguments such as `-d`. You need to manually input the directory in the scripts. The suffixes in the scripts can be changed according to your needs.

## Current Scripts

Currently, the repository contains the following scripts:

1. **removesuffixoffile.sh:** This script removes specified suffixes from the file names in the provided directories. The script currently removes suffixes such as `_door`, `_stairs`, and `_above`.

2. **separatefilesintofoldersbysuffix.sh:** This script separates files into different folders based on their suffixes. It creates directories named `above`, `stairs`, and `door` and moves files with corresponding suffixes into these directories.

### removesuffixoffile.sh

```bash
#!/bin/bash

# The directories to be processed. Put your directories here:
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
```
### separatefilesintofoldersbysuffix.sh

```bash
#!/bin/bash

# The directory to be processed. Put your directory here:
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
```

## Usage

To use the scripts, you need to update the directories in the scripts to match your requirements.

### removesuffixoffile.sh

In the `removesuffixoffile.sh` script, update the `directories` variable with the directories you want to process. For example:

```bash
directories=("/path/to/directory1" "/path/to/directory2")
separatefilesintofoldersbysuffix.sh
```

In the separatefilesintofoldersbysuffix.sh script, update the directory variable with the directory you want to process. For example:

```bash

directory="/path/to/directory"
```

### Running the Scripts

After you have updated the scripts with your directories, you can run them from a terminal as follows:

```bash

bash removesuffixoffile.sh
```
```bash

bash separatefilesintofoldersbysuffix.sh
```
### Changing Suffixes

The scripts are currently set up to work with file suffixes _above, _stairs, and _door. If you want to use different suffixes, you can change them in the scripts.

In the removesuffixoffile.sh script, you can change the suffixes in the sed command:

```bash

new_base_name=$(echo "$base_name" | sed -e 's/_your_suffix//' -e 's/_your_suffix//' -e 's/_your_suffix//')
```
In the separatefilesintofoldersbysuffix.sh script, you can change the suffixes in the if statements:

```bash

if [[ $file == *_your_suffix* ]]; then
    echo "Moving $file to $your_dir"
    mv "$file" "$your_dir"
```
## Contributing

Contributions to this repository are welcome. Feel free to submit a pull request with your script.
