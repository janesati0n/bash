#!/bin/bash
# Final boss of all calculators

calc(){

read -p "Enter two numbers: " num1 num2

echo "Choose an operation:"
echo "1. Sum"
echo "2. Difference"
echo "3. Product"
echo "4. Quotient"
echo "X. Exit"
read -p "Enter the operation (1-4): " vyber

case $vyber in
1)
let result=$num1+$num2
echo "Sum is $result"

;;

2)
let result=$num1-$num2
echo "Difference is $result"
;;

3)
let result=$num1*$num2
echo "Product is $result"
;;
4)
let result=$num1/$num2
echo "Quotient is $result"
;;
x)
echo "Darebactvo sa podarilo."
exit 0
;;
*)
echo "Invalid choice. Please choose 1, 2, 3 or 4."
;;
esac
}
while [[ $vyber != x ]]
do
calc
done
