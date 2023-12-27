#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2 failed to install the package"
    else
    echo -e "$2... $G success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: Please run this script with root access $N"
    exit 1
else
    echo -e "$N you are $R root user"
fi
echo "all arguments are $@"

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
    yum install $package -y
    VALIDATE $? "Installation of $package"
    else
    echo -e "$package is already installed... $Y skipping $N"
    fi
done
