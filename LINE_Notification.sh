#! /bin/bash

#.envを読み込む
source ./.env

LINE_ACCESS_TOKEN=$TOKEN

message=$(cat -)

curl -X POST -H "Authorization: Bearer ${LINE_ACCESS_TOKEN}" -F "message=$message" https://notify-api.line.me/api/notify