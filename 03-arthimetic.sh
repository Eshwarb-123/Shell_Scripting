#!/bin/bash

# to print multiplication table to given number


read -p "Enter a number:" num

for i in {1..10}
do
	echo "$num x $i = $((num * i))"
done

