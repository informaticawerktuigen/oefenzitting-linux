#!/bin/bash
if [ -f kopie ];
then
    p="."
elif [ -f level6/kopie ];
then
    p="level6"
else
    echo "Helaas, probeer het nog eens!"
    exit 1
fi

cmp --silent $p/bestand_met_inhoud $p/kopie
out=$?
if [ $out -ne 0 ];
then
    echo "Bijna! Je bestand is aangemaakt, maar het heeft niet de juiste inhoud"
    exit 1
else
    echo "ruin"
    exit 0
fi
