#!/bin/sh

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