#!/bin/bash
# Precvicovanie regexov

#1. all lines in a file that start with a word "apple"
egrep '^apple' REGEX

#2. lines containing only numbers (e.g., "123", "4567", etc.) in a file.
egrep '^[0-9]+$' REGEX

#3. lines that contain either "hello" or "world".
egrep '(hello|world)' REGEX

#4. lines that contain a URL (e.g., starting with "http://" or "https://").
egrep '^https?://' REGEX

#5. lines where there are numbers up to 9 [0-9]
egrep '[0-9]' REGEX
