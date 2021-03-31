#!/bin/bash

echo "Give me two values and I'll give you the sum, difference, product and the quotient of both"

echo "Please, enter the first value:"
read first

echo "Please, enter the second value:"
read second

echo "The sum: $(($first + $second))"
echo "The difference: $(($first - $second))"
echo "The product: $(($first * $second))"
echo "The quotient: $(($first / $second))"
