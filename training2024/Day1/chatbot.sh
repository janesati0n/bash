#!/bin/bash
# Jibber-Jabber

echo "What is your name?"
read name
name=${name^}
echo "How old are you, $name?"
read age
nickname=$name$age
echo "Nice to meet you $name, your nickname is $nickname."
