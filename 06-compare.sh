#!/bin/bash

# to compare largest number from given values


#read -p "Enter two numbers:" num1 num2

if [ $1 -gt $2 ]
then
    echo "$1 is larger"
else
    echo "$2 is larger"
fi
