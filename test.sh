#!/bin/bash

for name in "Alex" "Bob" "Charlie" "Diane"
do
  echo "Testing for $name: "
  result=`echo $name | python 1.py`
  if [ "$result" = "hello $name" ]; then
    echo "Succeeded"
  else
    echo "Failed"
    exit 1
  fi
done
