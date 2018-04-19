#!/bin/bash

# 1 - arquivo
# 2 - usuario
# 3 - iṕ

DIR=~/

MY_IP=$(ifconfig | grep 'inet end' | head -n1 | cut -d ":" -f2 | cut -d " " -f2)
OUTPUT_FILE=temp_file.txt

scp $1 $2@$3:$DIR

./$1 > $OUTPUT_FILE