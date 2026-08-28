#!/bin/bash

# caluculating sum

sum=0
for i in {1..15}
do
  sum=$((sum + i))
done

echo "sum=$sum"
