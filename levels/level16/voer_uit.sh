#!/bin/bash
echo "Geef het aantal woorden"
read aantalwoorden
echo "Geef het aantal lijnen"
read aantallijnen
echo "Geef het aantal karakters"
read aantalkarakters
echo "Geef het aantal bytes"
read aantalbytes
echo "Bedankt voor de getallen!"

antwoord=$(echo "$aantalwoorden * $aantallijnen * $aantalkarakters * $aantalbytes" | bc)

if [ $antwoord -eq 1788672 ];
then
    echo "fortunate"
fi
