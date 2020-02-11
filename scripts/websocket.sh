#!/usr/bin/env bash

function checker() {
    which "$1" && return 0 || return 1
}

pair=$1

if checker "websocat" == 1; then
    echo "Listening to key: ${pair}"

    if [[ pair == *"/"* ]]; then
        websocat wss://stream.binance.com:9443/stream?steams=${pair}
    else
        websocat wss://stream.binance.com:9443/ws/${pair}
    fi
else
    echo "websocat is required. brew install websocat."
fi
