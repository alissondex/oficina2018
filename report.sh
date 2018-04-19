#!/bin/bash

DATA=$(date +%Y-%m-%d)
HORA=$(date +%H-%M-%S)
MAQUINA=$(hostname)
VERSAO_KERNEL=$(uname -a | cut -d ' ' -f3)

QTD_CPU=$(cat /proc/cpuinfo | grep 'core id' | wc -l)
CPU_MODEL=$(cat /proc/cpuinfo | grep 'model name' | head -n 1 | cut -d ":" -f2)
UPTIME=$(uptime -s)
PARTICOES=$(df -h)

echo "Subject: Relatorio maquina"
echo "====================================================="
echo " Relatorio da maquina: $MAQUINA" 
echo " Data/Hora: $DATA --- $HORA" 
echo "====================================================="
echo ""
echo "Maquina ativa desde: $UPTIME" #2018-02-11 11:02:05
echo ""
echo "Versao do Kernel: $VERSAO_KERNEL" #16.04.1-Ubuntu
echo ""
echo "CPUs"
echo "Quantidade de CPUs/Core: $QTD_CPU" # 2
echo ""
echo "Modelo da CPU:$CPU_MODEL" #Intel(R) Core(TM) i3.....
echo ""
echo "Particoes:"
echo "$PARTICOES"
