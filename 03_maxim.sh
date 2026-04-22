#!/bin/bash
#CONTROL D'ERROR

if
    [ ${#} -eq 0 ]; then
        echo "Has de posar al manco un paràmetre"
        exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do
    if [ ${1} -gt ${MAXIM} ]; then
        #entram si el número seguent és més gran que el màxim
        MAXIM=${1}
    fi
    shift
done

echo "El màxim val ${MAXIM}"