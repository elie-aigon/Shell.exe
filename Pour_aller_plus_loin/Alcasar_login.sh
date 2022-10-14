#!/bin/bash

website="https://alcasar.laplateforme.io/intercept.php"

challenge=$(curl -X GET $website -L  | grep "challenge" | awk '{print $4}' | awk '{print $2}' FS='"' )
echo $challenge
curl -X POST $website -H "Content-Type: Multipart/form-data" -F "challenge=$challenge" -F "username=$1" -F "password=$2" -F "button=Authentication" $website -L


