#!/bin/bash
echo "Massive
█▀ █░█ █▄▄ █▀▄ █▀█ █▀▄▀█ ▄▀█ █ █▄░█
▄█ █▄█ █▄█ █▄▀ █▄█ █░▀░█ █▀█ █ █░▀█
Finder by ./meicookies
Rest Api by Jamet1337"
echo ""
echo -ne "Input list: "
read web
echo "Wait....."
cat "$web" | sed 's/https:\/\///g;s/http:\/\///g;s/www.//g' > 3
list='damn'
while IFS= read -r l
do
kk=$(curl -sL http://jamet1337.ml/api/subdo.php?url=$l | head -4 | tail -1 | sed 's/hasil//g;s/"//g;s/://g;s/,//g;s/\\r\\n/ \n/g;s/Author Jamet1337//g;s/ //g;s/www.//g;s/cpanel.//g;s/cpcontacts.//g;s/cpcalendars.//g;s/autodiscover.//g;s/mail.//g;s/webmail.//g')
echo "$kk" | sed '/^$/d' | awk -v RS="[ \n]+" '!n[$0]++' >> result.tmp
cat result.tmp
done < "$list"
rm damn
