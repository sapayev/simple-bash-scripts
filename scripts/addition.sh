#!/bin/bash

echo "It's addition script"

echo -n "Enter first number: "
read -r a

echo -n "Enter second number: "
read -r b

echo "$a + $b = $((a+b))"

