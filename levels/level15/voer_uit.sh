#!/bin/bash
for i in {1..100}; do
    if [ -f ditbestandmoetweg$i ];
    then
        echo "Helaas, bestand ditbestandmoetweg$i bestaat nog"
        exit 0
    fi
done
echo "greasy"
