#!/bin/bash

read -p "Please Enter Your Favorite OS: " MY_OS

# MY_OS=`echo $MY_OS | tr [:upper:] [:lower:] | tr -d [:digit:] | tr -d [:blank:] | tr -d [:punct:] `

if echo $MY_OS | grep -i linux >> /dev/null
then
	echo "Happy to hear that!"
elif echo $MY_OS | grep -i windows >> /dev/null
then
	echo "Shame on you!"
elif [ -z $MY_OS ]
then
	echo "Please enter something"
else
	echo "Not bad..."
fi