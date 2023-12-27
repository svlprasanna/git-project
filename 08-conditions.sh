#!/bin/bash

NUMBER1=$1
NUMBER2=$2

if [ ${NUMBER1} -gt ${NUMBER2} ]
then
   echo "$NUMBER1 IS BIGGER THAN $NUMBER2"
else
   echo "$NUMBER2 IS BIGGER THAN $NUMBER1" 
fi