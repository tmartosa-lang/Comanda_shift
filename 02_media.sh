#!/bin/bash
#CONTROL D'ERROR

if
    [ ${#} -eq 0 ]; then
        echo "Error: No s'ha indicat ningún paràmetre"
        exit 1
fi

#inicialitzam a zero
SUMA=0
#guardar la quantitat de números
QUANTS=${#}

while [ ${#} -gt 0 ]; do
    SUMA=$(( SUMA + ${1} ))
    shift

done
#aqui SUMA conté la suma dels paràmetres
#dividir la suma entre el número de paràmetres
MITJANA=$(( SUMA / QUANTS ))
echo "La mitjana val ${MITJANA}"