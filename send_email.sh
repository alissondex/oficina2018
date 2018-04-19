#!/bin/bash

if [ ${#1} == 0 ] ; then
	echo "Insira o email na linha de comando"
	exit 1
fi

EMAIL=$1

echo "$(./report.sh)" > send_report_txt
echo "$(./latest_login.sh)" > send_logins_txt

echo ""

echo "Enviado relatorio da maquina"
ssmtp $EMAIL < send_report_txt
echo ""

echo "Enviado relatorio de login"
ssmtp $EMAIL < send_logins_txt