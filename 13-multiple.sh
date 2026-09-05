#/bin/bash

read -p "enter a number: " num

for i in {1..10}
do
	echo "$num x $i = $((num * i))"
done

