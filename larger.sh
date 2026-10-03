#!/bin/bash

#To findout largest number from given list


max=0
for i in {1..20}
do
   if [ $i > $max ]
   then
	max=$i
   fi
done

echo "the largest number from 1..20  is : $max"
