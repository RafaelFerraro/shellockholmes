#!/bin/bash

myfun() {
  echo "\$1 is $1"
  echo "\$2 is $2"

  a="Goodbye function"
}

a=Hello
b=World

myfun $a $b

echo "\$a is $a"
echo "\$b is $b"
