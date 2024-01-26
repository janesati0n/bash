#!/bin/bash
# Program na vypisanie parametrov urceneho obrazka

obrazok=$1

for obraz in $1

do
	velkost=$(du $1)
	echo "Velkost suboru je $velkost KB."

	sirka=$(file $1 | awk -F',' '{print $8}' | awk -Fx '{print $1}')
	echo "$sirka px je sirka obrazku."

	dlzka=$(file $1 | awk -F',' '{print $8}' | awk -Fx '{print $2}')
	echo "$dlzka px je dlzka obrazku."
done
