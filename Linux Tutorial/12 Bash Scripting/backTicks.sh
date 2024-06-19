#!/bin/bash
# A simple demonstration of using backticks
# Ryan 19/6/2024
 
lines=`cat $1 | wc -l`
echo The number of lines in the file $1 is $lines

