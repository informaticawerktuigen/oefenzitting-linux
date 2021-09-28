#!/bin/bash
if [ -f bestand_met_inhoud ] || [ -f level9/bestand_met_inhoud ];
then
    echo "Helaas, probeer het nog eens! Het bestand bestaat nog."
    exit 1
else
    echo "building"
    exit 0
fi
