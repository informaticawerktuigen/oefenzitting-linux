#!/bin/bash
if [ -f kopie ];
then
    cmp --silent bestand_met_inhoud kopie
    out=$?
    if [ $out -ne 0 ];
    then
        echo "Bijna! Je bestand is aangemaakt, maar het heeft niet de juiste inhoud"
    else
        echo "ruin"
    fi
else
    echo "Helaas, probeer het nog eens!"
fi
