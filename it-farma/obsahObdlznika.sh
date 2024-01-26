#!/bin/bash
# Program na vypocet obsahu obdlznika

read -p "Napis dlzku strany a (cm):" STRANAa
read -p "Napis dlzku strany b (cm):" STRANAb
OBSAH=$[$STRANAa*$STRANAb]
echo "Obsah tvojho obdlznika je $OBSAH cm2."
