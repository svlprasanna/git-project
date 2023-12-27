#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
then
    echo "installing git is failed"
    exit 1
else
    echo "installing git is success"
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
VALIDATE
yum install git -y
VALIDATE