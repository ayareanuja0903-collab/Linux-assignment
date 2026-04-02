#!/bin/bash

read -p "Enter the file name: " file_name


if [[ ! -f "$file_name" ]]; then
	echo "File does not exist!"
	exit 1
fi

lines=$(wc -l < "$file_name")
words=$(wc -w < "$file_name")
chars=$(wc -c < "$file_name")

echo "File: $file_name"
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $chars"

