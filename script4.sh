#!/bin/bash

while [ -z $MY_IP ]
do
	read -p "Please Enter Your IP: " MY_IP
done

ping -c 2 $MY_IP >> /dev/null

if [ $? -eq 0 ]
then
	echo "SUCCESS"
else
	echo "FAILED"
fi
