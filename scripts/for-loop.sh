#!/bin/bash

for current_num in 1 2 3 4 5 6 7 8 9 10
do
	echo $((current_num + 1))
	sleep 1
done

echo "This is outside of the loop."


for current_alfa in {a..z}
do
	echo $current_alfa
	sleep 1
done

echo "This all aphabets"


echo "I want add each logs to logfiles"

for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
	echo "$file"
done

