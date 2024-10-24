#!/bin/bash

if [ $# -eq 3 ]; then
	echo "Number of Arguments are $#"
	echo "Script PID is $$"
else
	echo "Insufficient variable numbers..."
fi
