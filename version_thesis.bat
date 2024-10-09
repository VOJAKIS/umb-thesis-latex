#!/bin/bash

PRIEZVISKO=TvojePriezvisko
echo ${PRIEZVISKO}

TYP_PRACE="Bakalárska práca"
echo ${TYP_PRACE}

NOW=$(date '+%Y.%m.%d')
echo ${NOW}

N=6
SHA_FIRST_4_CHARACTERS=$(sha256sum out/main.pdf | cut -c1-${N})
echo ${SHA_FIRST_4_CHARACTERS}

cp out/main.pdf final/"${PRIEZVISKO} - ${TYP_PRACE} ${NOW} - ${SHA_FIRST_4_CHARACTERS}.pdf"