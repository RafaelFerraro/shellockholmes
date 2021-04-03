#!/bin/bash

echo "Please, type N or n for NO and Y or y for YES:"

read result

if [ $result == "y" ] || [ $result == "Y" ]
then
    echo "YES"
elif [ $result == "n" ] || [ $result == "N" ]
then
    echo "NO"
else
    echo "Invalid input"
fi
