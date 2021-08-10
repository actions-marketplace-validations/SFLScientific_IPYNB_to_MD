#!/bin/sh -l

OIFS="$IFS"
IFS=$'\n'

for i in $(find . | grep -F .ipynb); do
  jupyter nbconvert --to markdown "$i"
  echo "$i"
done
