#script-and-tools

This repository contains a collection of Python and shell scripts.
removesuffixoffile.sh

This script removes the suffix from the base filename of all files in the specified directory. For example, if the directory contains the files file_above.png, file_stairs.png, and file_door.png, then running the script will rename them to file.png, file_stairs.png, and file_door.png.

Usage:

removesuffixoffile.sh 
Code snippet


**Example:**
```

removesuffixoffile.sh
```
This will remove the suffix from the base filename of all files in the current directory.
seperatefilesintofoldersbysuffix.sh

This script moves all files in the specified directory into subdirectories based on their suffix. For example, if the directory contains the files file_above.png, file_stairs.png, and file_door.png, then running the script will create the subdirectories above, stairs, and door and move the corresponding files into them.

Usage:

seperatefilesintofoldersbysuffix.sh [-d <directory>]
Code snippet


**Example:**


seperatefilesintofoldersbysuffix.sh
  
This will move all files in the current directory into subdirectories based on their suffix.
Contributing

We welcome contributions to this repository. Please feel free to submit pull requests with bug fixes, new features, or documentation improvements.
License

This repository is licensed under the MIT License.
