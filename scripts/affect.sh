#!/bin/bash

arr=('-' '\' '|' '/' '+')
whi="true"
while $whi; do
	for c in "${arr[@]}"; do
		echo -en "\r Loading... $c"
		sleep .5
	done
#whi="false"
done
#echo "The END"
