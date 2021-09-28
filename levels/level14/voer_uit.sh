if [ -f my_file ];
then
    p="."
elif [ -f level14/my_file ];
then
    p="level14"
else
    echo "Helaas, probeer het nog eens!"
    exit 1
fi
if [ -s $p/my_file ];
then
    grep "hallo" $p/my_file >/dev/null 2>&1
    out=$?
    if [ $out -eq 0 ];
    then
        echo "power"
        exit 0
    else
        echo "Bijna! Zet de tekst \"hallo\" in het bestand"
        exit 1
    fi
else
    echo "Bijna! Je bestand is aangemaakt, maar het is leeg"
    exit 1
fi
