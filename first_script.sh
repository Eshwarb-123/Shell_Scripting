#!/bin/bash
if [ $1 = "eshwar" ]; then
 echo "Hi $1 welcome to the devops course"
fi
echo "=========== start addition operation ========="
echo "enter first number"
read a
echo "enter second number"
read b
sum=$((a + b))
echo "sum of the two numbers is : $sum"
