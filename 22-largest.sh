#!/bin/bash

#To findout largest number from given values


read -p "Enter any 4  numberes:" A B C D

largest=0

for i in $A $B $C $D
do
  if [ $i -gt $largest ] 
  then
    largest=$i
  fi
done
echo "largest number from the given list is : $largest"
