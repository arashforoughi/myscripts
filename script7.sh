#!/bin/bash
Hello
OUTPUT="/root/ssh_status_`date +%Y%m%d`.log"

while true
do
	SSH_NUMBERS=`netstat -pentaul | grep :22 | grep ESTABLISHED | wc -l`
	netstat -pentaul | grep :22 | grep ESTABLISHED | awk '{print $5}' | awk -F":" '{print $1}' > ip-list.txt

	echo "number of ssh connections @ `date +%Y/%m/%d-%H:%M:%S` --> $SSH_NUMBERS" >> $OUTPUT
	echo "list of the IPs are connected :" >> $OUTPUT
	cat ip-list.txt >> $OUTPUT
	echo " " >> $OUTPUT
	echo "########################################################################" >> $OUTPUT
	echo " " >> $OUTPUT
	sleep 10

	find /root -name "ssh_status*.log" -mtime +2 -delete
done
