#!/bin/bash
# Program na generovanie userov v2.00

while read RIADOK
do
	MENO=$(echo $RIADOK | awk -F '{print $1}')
	HESLO=$(echo $RIADOK | awk -F '{print $2}')
	useradd $MENO
	echo $HESLO | passwd --stdin -e "$MENO"

done
#< zoznamUserov.txt
