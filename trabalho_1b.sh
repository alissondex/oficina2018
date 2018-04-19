#!/bin/bash

ARQUIVO="NmapScan-sP.txt"
RELATORIO="Relatorio.txt"
DATA=$(date)

nmap -sP 192.168.9.70/24 > $ARQUIVO

cat $ARQUIVO | grep "Nmap scan" | cut -d " " -f5 > IP.txt
cat $ARQUIVO | grep "MAC" | cut -d " " -f3 > MAC.txt

echo "*****************************************" >> $RELATORIO
echo "*              RELATORIO                *" >> $RELATORIO
echo "*****************************************" >> $RELATORIO
echo "Alisson Eric Silva Ferreira de Souza" >> $RELATORIO
echo "" >> $RELATORIO
echo "Data: $DATA" >> $RELATORIO
echo "" >> $RELATORIO

LINES=$(wc -l IP.txt | cut -d " " -f1)
for i in $(seq "1" "$LINES")
do
	IP_ATUAL=$(head -n${i} IP.txt | tail -1)
	MAC_ATUAL=$(head -n${i} MAC.txt | tail -1)
	echo "$IP_ATUAL" >> $RELATORIO
	echo "$MAC_ATUAL" >> $RELATORIO
	echo "" >> $RELATORIO
	
done

cat $RELATORIO | ssmtp raffael.rbarbosa@gmail.com