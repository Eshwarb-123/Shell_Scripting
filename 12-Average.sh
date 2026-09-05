#!/bin/bash


#calcuate average of 3 given numbers

read -p "Enter any three numbers : " a b c

sum=$((a + b + c))
average=$((sum / 3))

echo "Average of three numbers is : $average"
