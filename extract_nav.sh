#!/bin/bash


curl -s https://www.amfiindia.com/spages/NAVAll.txt -o NAVAll.txt


awk -F ';' 'NF >= 6 && $1 ~ /^[0-9]+$/ { print $4 "\t" $6 }' NAVAll.txt > nav_data.tsv

echo " TSV data saved to nav_data.tsv"


awk -F '\t' '
BEGIN {
  print "["
}
{
  gsub(/"/, "\\\"", $1)
  gsub(/"/, "\\\"", $2)
  printf "  {\"Scheme Name\": \"%s\", \"Asset Value\": \"%s\"}", $1, $2
  if (NR < NR + 1) print ","
}
END {
  print "\n]"
}' nav_data.tsv > nav_data.json

echo " JSON data saved to nav_data.json"
