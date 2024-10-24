#!/bin/bash

if [ $# -eq 3 ]; then
	echo "All Arguments are $@"
	echo "Number of Arguments are $#"
	echo "Script PID is $$"
else
	echo "Insufficient variable numbers..."
	echo "Child PID is $!"
	exit 1;
fi
