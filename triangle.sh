#!/bin/bash

echo "Enter the three sides of the triangle that I show you its type"

read -p "The first side: " one
read -p "The second side: " two
read -p "The third side: " three

if [ $one -eq $two ] && [ $two -eq $three ]
then
    result=$(echo "equilateral" | tr 'a-z' 'A-Z')
elif [ $one -eq $two ] || [ $two -eq $three ] || [ $one -eq $three ]
then
    result=$(echo "isosceles" | tr 'a-z' 'A-Z')
else
    result=$(echo "scalene" | tr 'a-z' 'A-Z')
fi

echo $result
