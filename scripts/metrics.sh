#!/usr/bin/env bash

side="asks bids"
symbol="BNBUSDT"

date=`date -u +"%Y-%m-%d %T UTC"`
echo "Now: $date"

for s in $side
do
  result=`curl -s "https://testnet.binance.vision:443/api/v3/depth?symbol=$symbol" | jq '.'$s'[] | last | tonumber' | awk '{sum+=$0} END{print sum}'`
  echo "$symbol $s $result"
done
