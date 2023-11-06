#!/bin/bash
tmp_folder=/tmp/

ls $tmp_folder > output.txt
cat output.txt

sleep 2

awk '{print $0}' output.txt 

