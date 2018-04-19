#!/bin/bash

echo "Contador de arquivo"

cd $1
CAMINHO=$(cd $1)

if [ -f $CAMINHO ]
then
	CONTADOR=$(ls -a $CAMINHO | wc -l)
	echo "$CONTADOR"
fi

