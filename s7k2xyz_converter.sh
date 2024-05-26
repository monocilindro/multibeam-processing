#!/bin/bash

# Find and process kmall files in the script's directory

for file in *.s7k; do
  mblist -I "$file" -JU -MA -O^X^Yz > "${file%.s7k}.xyz"
done