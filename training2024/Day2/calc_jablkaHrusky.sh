#!/bin/bash
# Name 2 elements and their value, get their sum and difference

read -p "Name your first input: " name1
read -p "Name your second input: " name2
read -p "Insert your first number: " num1
read -p "Insert your second number: " num2

let sum=$num1+$num2
let diff=$num1-$num2

echo "$name1 and $name2 sum is $sum and difference is $diff."
