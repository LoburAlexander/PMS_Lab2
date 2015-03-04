
while [[ true ]];
do
INTERVAL=`cat config.ini`
wget -o log http://pogoda.tut.by/?utm_source=main_page
TEMP=`grep '<span class="temp-i">' 'index.html?utm_source=main_page' | head -n 1 | sed 's/>/ /g' | sed 's/&/ /g' | awk '{print $3;}'`
echo $TEMP
rm index.html?utm_source=main_page
sleep $INTERVAL
done