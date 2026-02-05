#!/bin/bash

set -e

trap 'echo "there is an error in $LINENO, Command: $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

for package in $@  #sudo sh 14-loops.sh nginx mysql nodejs
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y &>> $LOGS_FILE
        echo " "
    else
        echo "$package already installed, skipping"
    fi
done