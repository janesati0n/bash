#!/bin/bash
# Making 10 new directories
# Script na demonstraciu funkcii

createDir(){
        read -p "Enter dir name: " dirname
        if [ -d $dirname ]; then
                echo "This folder already exists."

        else
                mkdir $dirname
                if [ $? -eq 0 ]; then
                        echo "Folder was created successfuly."
                else
                        echo "Error: Folder was not created!"
                fi
        fi
}

createDir
createDir
createDir
createDir
createDir
createDir
createDir
createDir
createDir
createDir
