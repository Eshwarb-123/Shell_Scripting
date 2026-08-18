#!/bin/bash
set -x
# writing my first shell script
echo "hello world , welcome to devops learning"
if [ $1 = "eshwar" ]; then
 echo "Hi $1 welcome to the devops course"
fi
echo "=========== start addition operation ========="
echo "enter first number"
read a
enter "enter second number"
read b
sum=$((a + b))
echo "sum of the two numbers is : $sum"