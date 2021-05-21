#!/bin/bash

while read word
do
  echo $word |cut -c 3-3
done
