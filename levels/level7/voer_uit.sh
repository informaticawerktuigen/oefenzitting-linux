#!/bin/bash
if [ -d kopie ];
then
    p="."
elif [ -d level7/kopie ];
then
    p="level7"
else
    echo "Helaas, je hebt geen map aangemaakt."
    exit 1
fi

if [ -f $p/kopie/bestand_met_inhoud ];
then
    cmp --silent $p/kopie/bestand_met_inhoud $p/map_met_inhoud/bestand_met_inhoud
    out=$?
    if [ $out -ne 0 ];
    then
        echo "Het is de bedoeling om de volledige map met alle bestanden te kopiëren zonder aanpassingen."
        exit 1
    else
        echo "piquant"
        exit 0
    fi
else
    echo "Helaas, de map is geen kopie van de originele map"
    exit 1
fi

