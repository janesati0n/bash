#!/bin/bash
# Script na demonstraciu pouzitia case

echo "What country are you from?"
echo "1. Slovakia"
echo "2. Poland"
echo "3. Croatia"
echo "4. Hungary"
echo "5. Austria"
read -p "Please type your answer (1-5): " ans

case $ans in
1)
echo "You are from Slovakia."
;;
2)
echo "You are from Poland."
;;
3)
echo "You are from Croatia."
;;
4)
echo "You are from Hungary."
;;
5)
echo "You are from Austria."
;;
*)
echo "Wrong answer. Learn to read!"
;;
esac
