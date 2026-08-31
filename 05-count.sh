#!/bin/bash

# to count the even numbers from given range

count=0
for i in {1..100}
do
    if [ $((i % 2)) = 0 ]
    then
	    count=$((count + 1))
    fi
done

echo "Count:$count"
