#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo "ERROR:......$2 failed"
    exit 1 
else
    echo "....$2..success"
fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:PLEASE RUN THE SCRIPT WITH ROOT ACCESS"
    exit 1
else
    echo "you are root user"
fi
yum install mysql -y
VALIDATE $? "Installing mysql"
yum install git -y
VALIDATE $? "Installing git"