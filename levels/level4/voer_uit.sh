if [ -f leeg_bestand ] || [ -f level4/leeg_bestand ];
then
    if [ -s leeg_bestand ] || [ -s level4/leeg_bestand ];
    then
        echo "Bijna! Je bestand is aangemaakt, maar het is niet leeg"
        exit 1
    else
        echo "orange"
        exit 0
    fi
else
    echo "Helaas, probeer het nog eens!"
    exit 1
fi
