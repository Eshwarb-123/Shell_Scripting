#!/bin/bash

# to print the factorial value of given number

read -p "Enter a number:" num
fact=1

#for((i=1;i>=num;i++))
#do
#	fact=$((i * fact))
#done

#echo "factorial=$fact"


for i in {1..100}
do
	if [ $i -le $num  ]
	then
		fact=$((fact * i))
	fi
done

echo "factorial=$fact"
	   
