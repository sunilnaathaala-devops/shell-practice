#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

VALIDATE(){

if [ $1 -ne 0 ]; then
    echo "$2 ......FAILURE"
    exit 1
else
    echo "$2 ......SUCCESS"
fi

}

echo "installing Nginx"
dnf install nginx -y
VALIDATE $? "Installing Nginx"
echo" "

echo "installing MYSQL"
dnf install mysql -y
VALIDATE $? "Installing MySQL"
echo" "

echo "installing Nodejs"
dnf install nodejs -y
VALIDATE $? "Installing NodeJS"