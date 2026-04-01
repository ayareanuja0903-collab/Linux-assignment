#!/bin/bash

#create a new directory

read -p "Enter Foleder Name: " DIRCTORY_NAME

DIR="$DIRCTORY_NAME"

mkdir -p "$DIR"
touch "$DIR"/shellscript{1..3}.txt

ls -l "$DIR"
