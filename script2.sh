#!/bin/bash

read -p "Please Enter 1st Number: " VAR1
read -p "Please Enter 2nd Number: " VAR2

if [ $VAR1 -gt $VAR2 ];then
	echo "$VAR1 is greater than $VAR2"
elif [ $VAR1 -lt $VAR2 ];then
	echo "$VAR2 is greater than $VAR1"
else
	echo "$VAR1 is equal to $VAR2"
fi
