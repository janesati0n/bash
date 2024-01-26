#!/bin/bash
# Script na backup suborov v priecinku a vsetkych podpriecinkoch (UNDER CONSTRUCTION)

directory="$1"
if [ $# -ne 1 ]                 # Check the number of positional parameters
        then
        echo "Usage: $0 <directory_path>"
        exit 1
fi

if [ ! -d "$directory" ]        # Check if the input directory exists
        then
        echo "Error: Directory '$directory' does not exist."
        exit 1
fi

backup_dir="/var/tmp/${directory}_backup"       # Create the backup directory
mkdir -p "$backup_dir"

if [ ! -d $backup_dir ]
        then
        mkdir -p $backup_dir
fi

ls_dir=$(ls $directory)

if [ -z $ls_dir ]
        then
        echo "Directory is empty, nothing to backup."
fi

for file in $ls_dir
        do
        if [ -f $backup_dir$file ]
        then
        echo "File $file already exists. What should I do next?"
        echo "1. overwrite"
        echo "2. skip"
        echo "3. copy with number postfix"
        echo "4. rename"
        read -p volba
        case $volba in
        1)
        ;;
        2)
        ;;
        3)
        ;;
        4)
        ;;
        *)
        ;;
        esac
        fi
