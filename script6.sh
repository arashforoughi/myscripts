#!/bin/bash
#Hello
i=0
while [ $i -le 100 ]
do
	i=$[$i+1]

	if [ `expr $i % 5` -eq 0 ]
	then
		continue;
		echo "Hop"
	else
		echo "Hello $i times!"
	fi

	sleep 1
done

echo "After loop :D"
