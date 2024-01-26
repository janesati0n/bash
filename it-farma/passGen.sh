#!/bin/bash
# Generator nahodnych hesiel
# Vybrat meno zo suboru a 4 nahodne cisla

POCET=$(wc -l mena.txt)
RIADOK=$(expr $RANDOM % $POCET)

MENO=$(head -n $RIADOK mena.txt | tail -1)
PIN=$(echo "$RANDOM$RANDOM" | cut -c 4)

echo "$MENO$PIN"
