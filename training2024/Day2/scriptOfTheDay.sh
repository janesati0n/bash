#!/bin/bash
# Script that will extract every type of archive in linux

# Check if the correct number of parameters is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <archive_path> <extract_path>"
    exit 1
fi

# Assign positional parameters to variables
archive_path=$1
extract_path=$2

# Check if the archive file exists
if [ ! -e "$archive_path" ]; then
    echo "Error: Archive file not found."
    exit 1
fi

# Check if the extract path exists
if [ -e "$extract_path" ]; then
    echo "Error: Extract path already exists. Choose a different path."
    exit 1
fi

# Determine the archive type and extract accordingly
if [[ "$archive_path" =~ \.tar\.gz$ || "$archive_path" =~ \.tgz$ ]]; then
    tar -xzf "$archive_path" -C "$extract_path"
elif [[ "$archive_path" =~ \.tar\.bz2$ || "$archive_path" =~ \.bz2$ ]]; then
    tar -xjf "$archive_path" -C "$extract_path"
elif [[ "$archive_path" =~ \.tar$ ]]; then
    tar -xf "$archive_path" -C "$extract_path"
elif [[ "$archive_path" =~ \.rar$ ]]; then
    unrar x "$archive_path" "$extract_path"
elif [[ "$archive_path" =~ \.gz$ ]]; then
    gunzip -c "$archive_path" > "$extract_path"
elif [[ "$archive_path" =~ \.zip$ ]]; then
    unzip "$archive_path" -d "$extract_path"
elif [[ "$archive_path" =~ \.7z$ ]]; then
    7z x "$archive_path" -o"$extract_path"
else
    echo "Error: Unsupported archive format."
    exit 1
fi

# Check the return code of the extraction command
if [ $? -eq 0 ]; then
    echo "Extraction successful."
else
    echo "Error: Extraction failed."
fi
