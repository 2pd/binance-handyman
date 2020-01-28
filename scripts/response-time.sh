!#/usr/bin/env bash

curl 'https://api.binance.com/api/v3/time' \
    -H 'Content-Type: application/json' \
    -H 'Accept-Encoding: gzip, deflate, sdch' \
    -H 'Accept-Language: en-US,en;q=0.8,ja;q=0.6' \
    -H 'Upgrade-Insecure-Requests: 1' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36' \
    -H 'Connection: keep-alive' --compressed -s -o /dev/null \
    -w  "%{time_starttransfer}\n"
