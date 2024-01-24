#!/bin/bash
# Script of the Day1

: '
toto je uplne zbytocny multi-line comment
2024
'

#Napis komentar ku kazdej casti tohto scriptu
name=${1}
read -p "How old are you, $name? " age
read -p "What are some of your favorite car brands? " -a cars

echo "Your name is $name, your age is $age and your favorite car brand is ${cars[1]}"
