#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Error: se requiere un unico paràmetro"
    exit 1
fi

#comprobar que realmente tenemos un número
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: se requiere un número"
    exit 1
fi

echo "vamos a calcular el sumatorio de $1"

#recoger el valor de n
n=$1
suma=0

#bucle for
for (( i=1;i<=n;i++ ))
do
    suma=$((suma+i))
done

echo "el sumatorio de $n vale $suma"
#calcular el sumatorio de un número, por ejemplo sumatorio de 5 sería 1+2+3+4+5=15
exit 0