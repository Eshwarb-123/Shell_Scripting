#!/bin/bash

#script to print numbers divisible by 5 & 3 from 1 to 100


for i in {1..100}
do
	if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ]
	then
		echo $i
	fi
done
