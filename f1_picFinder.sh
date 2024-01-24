#!/bin/bash
# Program na vyhladanie a roztriedenie obrazkov v1.01

read -p "Insert path to desired directory:" DIRECTORY
find $DIRECTORY | egrep '.jpg|.png' > /tmp/zoznamObrazkov.txt

LANDSCAPE=0
PORTRAIT=0
SQUARE=0

while read RIADOK
do
	X=$(file $RIADOK | awk -F',' '{print $8}' | awk -Fx '{print $1}')
	Y=$(file $RIADOK | awk -F',' '{print $8}' | awk -Fx '{print $2}')

	if test $X -gt $Y
	then
		LANDSCAPE=$(($LANDSCAPE+1))
	fi
	if test $Y -gt $X
	then
		PORTRAIT=$(($PORTRAIT+1))
	fi
	if test $X -eq $Y
	then
		SQUARE=$(($SQUARE+1))
	fi

done < /tmp/zoznamObrazkov.txt

echo "There are $LANDSCAPE landscape pictures, $PORTRAIT portrait pictures and $SQUARE square pictures."
