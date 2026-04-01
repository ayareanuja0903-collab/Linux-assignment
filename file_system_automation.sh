#!/bin/bash

#create a new directory

DIR="shell_script_directory"

mkdir -p "$DIR"
touch "$DIR"/shellscript{1..3}.txt

ls -l "$DIR"
