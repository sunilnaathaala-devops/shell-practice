#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx ......FAILURE"
    exit 1
else
    echo "Installing Nginx ......SUCCESS"
fi

echo "installing MYSQL"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MYSQL ......FAILURE"
    exit 1
else
    echo "Installing MYSQL ......SUCCESS"
fi

echo "installing Nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs ......FAILURE"
    exit 1
else
    echo "Installing nodejs ......SUCCESS"
fi