#!/bin/bash

while read line; do
  response=$(curl -s -o /dev/null -w "%{http_code}\n" "$line")
  echo $line: $response
done < list.txt
