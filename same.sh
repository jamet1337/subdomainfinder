#!/bin/bash
echo "Same Domain - Menampilkan domain yang memiliki atau mengandung kesamaan dengan kata yang dimasukan"
echo ""
if [ -z $1 ]; then
  echo "Usage: ./same.sh <domain>"
  exit 1
fi
curl -sL http://jamet1337.ml/api/same-domain.php?url=$1 | head -5 | tail -1 | sed '/^$/d' | awk -v RS="[ \n]+" '!n[$0]++' | sed 's/hasil//g;s/"//g;s/://g;s/,//g;s/\\r\\n/ \n/g' > rest
cat rest


