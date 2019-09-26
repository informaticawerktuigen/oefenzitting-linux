if [ -f leeg_bestand ];
then
    if [ -s leeg_bestand ];
    then
        echo "Bijna! Je bestand is aangemaakt, maar het is niet leeg"
    else
        echo "orange"
    fi
else
    echo "Helaas, probeer het nog eens!"
fi
