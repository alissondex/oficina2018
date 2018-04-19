#!/bin/bash


clear
#read -p "Informe o inicio da sequencia: " INICIO
#read -p "Informe o final da sequencia: " FINAL

for i in $(seq "$1" "$2")
do 
	mkdir "pasta_${i}"
done