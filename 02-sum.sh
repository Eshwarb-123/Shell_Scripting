#!/bin/bash


# calculate the sum of even numbers from 1 to 20

sum=0
for i in {1..20}
do
	if [ $((i % 2)) = 0 ]
        then
		sum=$((sum+i))
        fi
done
echo "sum=$sum"

