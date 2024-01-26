#!/bin/bash
# Create backup of the directory

input_dir="$1"

# Check if a directory path is provided as a positional parameter
if [ $# -eq 0 ]
        then
        echo "Usage: $0 <directory_path>"
        exit 1
fi

# Check if the input directory exists
if [ ! -d "$input_dir" ]
        then
        echo "Error: Directory '$input_dir' does not exist."
        exit 1
fi

# Create the backup directory with the same name and postfix "_backup"
backup_dir="${input_dir}_backup"
mkdir -p "$backup_dir"

# Copy all files in the input directory and its subdirectories to the backup directory
rsync -a --exclude="$backup_dir" "$input_dir/" "$backup_dir/"

# Archive the entire backup directory
archive_file="${input_dir}_backup_full.tar.gz"
tar -czf "$archive_file" -C "$(dirname "$input_dir")" "$(basename "$backup_dir")"

# Archive the backup directory
archive_file="$input_dir/backup.tar.gz"
tar -czf "$archive_file" -C "$input_dir" backup

echo "Backup completed. Archive created: $archive_file"
