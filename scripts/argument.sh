#!/bin/bash

read myarg

echo "My argmanet is $myarg"

echo "Write ls directory: "

read dirname 
ls -lh $dirname
