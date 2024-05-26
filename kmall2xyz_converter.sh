#!/bin/bash

# Find and process kmall files in the script's directory

for file in *.kmall; do
  mblist -I "$file" -JU -MA -O^X^Yz > "${file%.kmall}.xyz"
done