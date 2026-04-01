#!/bin/bash


CURRENT_DATE=$(date +"%Y-%m-%d")
CURRENT_TIME=$(date +"%H:%M:%S")

USER_NAME=$(whoami)

echo "System Monitoring Details:"
echo "User Name: $USER_NAME"

echo "Current Date: $CURRENT_DATE"
echo "Current Time: $CURRENT_TIME"

