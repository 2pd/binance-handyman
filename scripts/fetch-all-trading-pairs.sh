#!/usr/bin/env bash

curl -s -H 'Content-Type: application/json'  https://api.binance.com/api/v3/exchangeInfo | jq '.symbols | .[] | .symbol'
