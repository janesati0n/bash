#!/bin/bash
# Making 10 new directories
# Vylepsenie scriptu pouzitim cyklu for

for ((i=1; i<=10; i++))
        do
        read -p "Enter the name of directory $1: " dir_name

                if [ -e "$dir_name" ]
                then
                echo "Error: Folder with that name already exists."
                else
                mkdir $dir_name
                fi
done
