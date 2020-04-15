#!/bin/sh

API_URL="https://api.github.com/repos"

if [ $# -ne 4 ]; then
  echo "[usage]" 1>&2
  echo "setup_labels.sh {owner} {repo} {user} {token} " 1>&2
  exit 1
fi

curl -X DELETE $API_URL/$1/$2/labels/bug -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/duplicate -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/enhancement -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/help%20wanted -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/invalid -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/question -u $3:$4
curl -X DELETE $API_URL/$1/$2/labels/wontfix -u $3:$4

json_file=`cat label.json`
json_length=`echo ${json_file} | jq length`

echo $json_file
echo $json_length

for i in `seq 0 $(expr ${json_length} - 1)`
do
    name=`echo ${json_file} | jq .[${i}].name`
    color=`echo ${json_file} | jq .[${i}].color`
    description=`echo ${json_file} | jq .[${i}].description`
    
    echo "${name} ${color} ${description}"
done
