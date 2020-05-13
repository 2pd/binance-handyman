#!/usr/bin/env bash

curl -s -H 'Content-Type: application/json'  https://testnet.binance.vision/api/v3/exchangeInfo | jq '.symbols | .[] | .symbol'
