#!/bin/bash

#To findout largest number from given values


read -p "Enter three numbers any:" num1 num2 num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo "$num1 is largest number"
elif [ $num2 -gt $num3 ]
then
	echo "$num2 is largest number"
else
	echo "$num3 is largest number"
fi


