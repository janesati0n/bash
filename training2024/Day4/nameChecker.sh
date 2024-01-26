#!/bin/bash
# Name checker (UNDER CONSTRUCTION)

if [ "$#" -eq 0 ]
        then
        echo "Error: Please provide at least one name."
        exit 1
fi

names=("$@")

for name in "${names[@]}";
        do
        # Make the first letter uppercase
        name=$(echo "$name" | sed 's/./\U&/')

        # Check if the name starts with 'a' or 'A'
        if [[ $name == [aA]* ]]
                then
                # Ask for age
                read -p "Enter age for $name: " age

        # Check if the person is an adult
        if [ "$age" -ge 18 ]
                then
                echo "$name is an adult."
                else
                echo "Warning! $name is not an adult!"
        fi
        elif [[ $name == [fF]* ]]
                then
                # Print message for names starting with 'f' or 'F'
                echo "$name should not start with letter f or a!"
                continue
        else
                # For other names
                echo "Name: $name"
        fi
done
