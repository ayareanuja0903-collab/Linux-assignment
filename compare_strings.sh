#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <string1> <string2>"
	exit 1
fi

STR1="$1"
STR2="$2"

if [ "$STR1" = "$STR2" ]; then
       echo "Strigns are EQUAL"
else 
	echo "Strigns are DIFFERENT"
fi
