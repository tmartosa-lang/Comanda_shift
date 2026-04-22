#!/bin/bash
#AL MANCO UN PARÀMETRE
if
    [ ${#} -eq 0 ]; then
        echo "Has de posar al manco un paràmetre"
        exit 1
fi

#Assignar el paràmetre a N
N=${1}


#Verificar que N sea menor que 25
if [ $N -ge 26 ]; then
        echo "Error: El número debe ser menor que 25."
        exit 1
fi

#Verificar que N sea positivo
if [ $N -lt 0 ]; then
        echo "Error: El número debe ser positivo."
        exit 1
fi





FACTORIAL=1

while [ $N -gt 0 ]; do
    echo "$N"
    #abans de restar, multiplicar aquesta  N al factorial
    FACTORIAL=$((FACTORIAL * N))
    N=$((N-1))

done
echo "EL FACTORIAL DE ${1} VAL ${FACTORIAL}"
