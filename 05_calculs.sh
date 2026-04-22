#!/bin/bash
SUMA=0
while [ ${#} -gt 0 ]; do
    echo " número de paràmetres ${#}"
    SUMA=$(( SUMA + ${1} ))
    shift

done
echo "la suma val ${SUMA}"

if
    [ ${#} -eq 0 ]; then
    echo "Error: no s'ha identificat ningun paràmetre"
    exit 1
fi 