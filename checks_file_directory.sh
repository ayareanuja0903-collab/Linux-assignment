#!/bin/bash

read -p "Enter File or Folder Name: " NAME

if [ ! -e $NAME ]; then
	echo "Does not exists."
	exit 1
fi

if [ -f $NAME ]; then
	echo "File Exists."

elif [ -d $NAME ]; then
	echo "Directory Exists."

else 
	echo "It exists but is neither a regular file nor a directory."
fi
