#!/bin/bash
echo "Gebruik grep en wc"
echo "Geef het aantal regels waar een \'a\' in voorkomt."
read aantala
echo "Geef het aantal regels waar een \'b\' in voorkomt."
read aantalb
echo "Geef het aantal regels waar een \'c\' in voorkomt."
read aantalc
echo "Bedankt voor de getallen!"

antwoord=$(echo "$aantala * $aantalb * $aantalc" | bc)

if [ $antwoord -eq 4320 ];
then
    echo "Hoera, je hebt de oefenzitting volledig afgerond!"
    exit 0
fi
exit 1
