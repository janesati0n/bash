#!/bin/bash
# Zisti, ci spustam script ako Root, alebo ako iny user

if [ "$(id -u)" -eq 0 ]
        
        then
        echo "You are running this script as a Root."

        else
        echo "You are not running this script as a Root. Please, use sudo or su."

fi
