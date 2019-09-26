if [ -f my_file ];
then
    if [ -s my_file ];
    then
        grep "hallo" my_file >/dev/null 2>&1
        out=$?
        if [ $out -eq 0 ];
        then

            echo "power"
            
        else
            echo "Bijna! Zet de tekst \"hallo\" in het bestand"
        fi
    else
        echo "Bijna! Je bestand is aangemaakt, maar het is niet leeg"
    fi
else
    echo "Helaas, probeer het nog eens!"
fi
