#!/bin/bash
# Zadat 5 variables cez Read a vypisat

read -p "Enter name: " name
read -p "Enter wiw: " wiw
read -p "Enter password: " -s password
read -p "Set language: " lang
read -p "Enter e-mail: " mail

echo "Name is: $name"
echo "Wiw is: $wiw"
echo "Password is $password"
echo "Language set is: $lang"
echo "E-mail: $mail"
