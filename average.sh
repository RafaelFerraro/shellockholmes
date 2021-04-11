#!/bin/bash

printf "This script aims to calculate the average \
 of some values and print the result with 3 decimal places."

printf "Please, enter the divisor:"
read divisor

index=$divisor
counter=0

while [ $index -gt 0 ]
do
  ((index=$index-1))
  printf "Enter a dividend:"
  read value
  ((counter=$counter+$value))
done

result=$(echo "scale=4;$counter/$divisor" | bc)

printf "%0.3f\n" $result
