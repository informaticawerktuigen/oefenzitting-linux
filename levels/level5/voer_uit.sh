if [ -d map ] || [ -d level5/map ];
then
    echo "stupendous"     
    exit 0   
else
    echo "Helaas, probeer het nog eens!"
    exit 1
fi
