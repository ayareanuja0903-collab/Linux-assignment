#!/bin/bash


if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

FILE="$1"

if [ ! -e "$FILE" ]; then
	echo "Error: File does not exist."
	exit 1
fi

echo "Checking permissions for: $FILE"

if [ -r "$FILE" ]; then
	echo "Owner has READ permission"
else
	echo "Owner does not have READ permission"
fi

if [ -w "$FILE" ]; then
	echo "Owner has WRITE permission."
else 
	echo "Owner does not have WRITE permission"
fi

if [ -x "$FILE" ]; then
	echo "Owner has EXECUTE permission"
else 
	echo "Owner does not have EXECUTE permission"
fi
