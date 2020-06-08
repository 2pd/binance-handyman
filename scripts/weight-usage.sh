#!/usr/bin/env bash

# ./scripts/weight-usage.sh "api/v3/aggTrades?symbol=BTCUSDT"

curl -s -D -  -o /dev/null  "https://api.binance.com/"$1  | grep "x-mbx-*"
