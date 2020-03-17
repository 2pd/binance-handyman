#!/usr/bin/env bash

while :
do
    ( echo "openInterst: " &&  curl -s https://www.binance.com/fapi/v1/openInterest?symbol=BTCUSDT | jq '.openInterest' )
    sleep 2
done
