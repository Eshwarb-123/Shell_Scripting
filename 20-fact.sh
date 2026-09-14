#!/bin/bash

#To findout factorial of 5


fact=1
for i in {1..5}
do
	fact=$((i * fact))
done

echo "factorial of 5 = $fact"
