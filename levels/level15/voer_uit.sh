#!/bin/bash
for i in {1..100}; do
    if [ -f ditbestandmoetweg$i ] || [ -f level15/ditbestandmoetweg$i ];
    then
        echo "Helaas, bestand ditbestandmoetweg$i bestaat nog"
        exit 1
    fi
done
echo "greasy"
exit 0