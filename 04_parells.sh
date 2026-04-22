#!/bin/bash
if
    [[ ${#} -eq 0 ]]; then
        echo "Error: No s'ha indicat ningún paràmetre"
        exit 1
fi

PARES=0
IMPARES=0

while [ ${#} -gt 0 ]; do
    if [ $(($1 % 2)) -eq 0 ]; then
        PARES=$(( PARES + 1 ))
    else
        IMPARES=$(( IMPARES + 1 ))
    fi

    shift

done    

echo "PARES: ${PARES}"
echo "IMPARES: ${IMPARES}"