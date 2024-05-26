#!/bin/bash
# This bash script requires MBsystem. It generates point clouds as ASCII xyz files (UTM East, UTM West and height) from the existing Kongsberg raw files in the current folder.
# It has been tested in MBsystem 5.8.2 beta, and Ubuntu 22.04 running in WSL (Win11)
# Use CloudCompare to visualize the output
# Find and process kmall files in the script's directory

for file in *.kmall; do
  mblist -I "$file" -JU -MA -O^X^Yz > "${file%.kmall}.xyz"
done
