#!/bin/bash

IP="IP.txt"

#nmap -sP 192.168.9.70/25 > $IP

SIZE=$(cat $IP | wc -l)

for i in $(seq 1 $SIZE)
do
	LINE=$(sed -n ${i}p $IP)
	echo $LINE
done
