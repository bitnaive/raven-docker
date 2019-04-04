#!/usr/bin/env bash


[[ -z "$RPCUSER" ]] && echo "" || echo "rpcuser=$RPCUSER \n" >> /root/.raven/raven.conf
[[ -z "$RPCPASSWORD" ]] && echo "" || echo "rpcpassword=$RPCPASSWORD \n" >> /root/.raven/raven.conf
[[ -z "$RPCALLOWIP" ]] && echo "" || echo "rpcallowip=$RPCALLOWIP \n" >> /root/.raven/raven.conf
[[ -z "$TESTNET" ]] && echo "" || echo "testnet=1 \n" >> /root/.raven/raven.conf

ravend & tail -f /dev/null

exec "$@"