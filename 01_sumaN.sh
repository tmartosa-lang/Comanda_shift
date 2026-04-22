#!/bin/bash
SUMA=0
while [ ${#} -gt 0 ]; do
    echo " numero de paràmetres ${#}"
    SUMA=$(( SUMA + ${1} ))
    shift

done
echo "la suma val ${SUMA}"