#!/usr/bin/env bash

name=simple_file.txt
path=/testing_scripts

# Check if the path exists
if [ ! -e "$path" ]; then
    echo "Error: The path '$path' does not exist."
    exit 1
fi

tar -czvf "$name.tar.gz" "$path"
gpg -c "$name.tar.gz"
rm -rf "$name.tar.gz"


