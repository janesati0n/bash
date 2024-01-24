#!/bin/bash
# Jednoducha kalkulacka na scitanie/odcitanie/kratenie/delenie

read -p "Please enter the first number: " num1
read -p "Please enter the second number: " num2

let sum=$num1+$num2
let diff=$num1-$num2
let prd=$num1*$num2
let quo=$num1/$num2

echo "Sum is $sum"
echo "Difference is $diff"
echo "Product is $prd"
echo "Quotient is $quo"
