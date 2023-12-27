#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: Please run this script with root access $N"
    exit 1
else
    echo -e "$N you are $R root user"
fi

