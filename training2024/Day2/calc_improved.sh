#!/bin/bash
# Mierne vylepsena kalkulacka na scitanie/odcitanie/kratenie/delenie

read -p "Enter two numbers: " num1 num2

echo "Choose an operation:"
echo "Sum [s]"
echo "Difference [d]"
echo "Product [p]"
echo "Quotient [q]"
read -p "Enter the operation (s/d/p/q): " ops


if [ "$ops" == s ]
        then
        let result=$num1+$num2
        echo "Sum is $result"
fi
if [ "$ops" == d ]
        then
        let result=$num1-$num2
        echo "Difference is $result"
fi
if [ "$ops" == p ]
        then
        let result=$num1*$num2
        echo "Product is $result"
fi
if [ "$ops" == q ]
        then
        let result=$num1/$num2
        echo "Quotient is $result"
fi
