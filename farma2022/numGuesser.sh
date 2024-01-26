#!/bin/bash
# Number Guessing Game v1.04

RAND=$(expr $RANDOM % 100)
read -p "Insert a number: " NUMBER

while test "$RAND" != "$NUMBER"
do
	if test -z "$NUMBER"
	then
		NUMBER=0
	fi
	
	if test "$NUMBER" = "q"
	then
		exit 1
	fi

	if test "$RAND" -lt "$NUMBER"
	then
		echo "Try less!"
	fi

	if test "$RAND" -gt "$NUMBER"
	then
		echo "Try more!"
	fi
	read -p "Insert a number:" NUMBER
done
echo "You're right!"
