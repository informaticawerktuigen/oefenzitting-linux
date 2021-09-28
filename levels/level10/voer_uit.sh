if [ -d map ] || [ -d level10/map ];
then
    echo "Helaas, probeer het nog eens!"
    exit 1
else
    echo "soothe"
    exit 0
fi
