#!/bin/bash
# Script that will extract every type of archive in linux

archive_file=$1

# Check if line parameter is provided
if [ $# -eq 1 ]
        then
        echo "Paramter check OK"

        else
        echo "Usage: $0 <archive_path>"
        exit 1
fi

# Check if archive file exists
if [ -f $archive_file ]
        then
        echo "File check OK"

        else
        echo "Error: Archive file not found."
        exit 1
fi

# Check if the extract path exists
if [ ! -d ${archive_file%%.*} ]
        then
        echo "Directory check OK"
        else
        echo "Error: Extract path already exists. Choose a different path."
        exit 1
fi

# Determine the archive type and extract accordingly
read -p "Do you really want to extract $archive_file? [y/n] " input

if [ $input == "y" ]
        then
        echo "Extracting to $(archive_file%%.*)/"
        if [ $archive_file == *.tar.bz ]
        then
        tar -xvjf $archive_file

        elif [ $archive_file == *.tar.gz ]
        then
        tar -xvzf $archive_file

        elif [ $archive_file == *.bz2 ]
        then
        bzip2 -d $archive_file


        elif [ $archive_file == *.rar ]
        then
        check_command=`command -v unrar`
        if [[ -z $check_command ]]
                then
                sudo yum install unrar -y
        fi
        unrar x $archive_file

        elif [ $archive_file == *.gz ]
        then
        gunzip $archive_file

        elif [ $archive_file == *.tar ]
        then
        tar -xvf $archive_file

        elif [ $archive_file == *.tgz ]
        then
        tar -xvzf $archive_file

        elif [ $archive_file == *.zip ]
        check_command=`command -v unzip`
        if [[ -z $check_command ]]
                then
                sudo yum install unzip
        fi
        then
        unzip $archive_file

        elif [ $archive_file == *.p7zip ]
        then
        check_command=`command -v unp7zip`
        if [[ -z $check_command ]]
                then
                sudo yum install p7zip
        fi
        7z x $archive_file

        else
        exit 1
fi

# Check the return code of the extraction command
if [ $? -eq 0 ]
        then
        echo "Extraction successful."
        else
        echo "Error: Extraction failed."
fi
