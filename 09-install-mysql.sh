#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR:PLEASE RUN THE SCRIPT WITH ROOT ACCESS"
exit 1
else
echo "you are root user"
fi

yum install mysql -y