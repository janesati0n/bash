#!/bin/bash
# Program na generovanie userov v1.02

for i in $(seq 1 $1)
do
	useradd "user$i"
	echo "password" | passwd -e "user$i" --stdin
done
