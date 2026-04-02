#!/bin/bash

read -p "Enter file or directory path: " path
read -p "Enter string to serach: " search

if [[ ! -e "$path" ]]; then
	echo "Path does not exist!"
	exit 1
fi

if [[ -f "$path" ]]; then
	
	result=$(grep -n "$search" "$path")

	 if [[ -z "$result" ]]; then
        	echo "❌ No matches found!"
	else
		echo "Searching in file..."
		echo "$result"
	fi
	
elif [[ -d "$path" ]]; then
	
	result=$(grep -rn "$search" "$path")

	if [[ -z "$result" ]]; then
		echo "echo "❌ No matches found!""
	else 
		echo "Searching recursively in directory..."
		echo "$result"
	fi
else
	echo "Invalid directory of file!"
fi
