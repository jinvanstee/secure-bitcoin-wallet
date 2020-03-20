#!/bin/bash

if [ $# == 1 ] ; then
    wallet=$1
    wallet_vol=$wallet
elif [ $# == 2 ] ; then
    user=$1
    wallet=$2
    wallet_vol=$user-$wallet
else
    echo "usage: "$0" [username] walletname (e.g. demo0 charlie)"
    exit
fi
echo "wallet="$wallet

DOCKER_CONTENT_TRUST=${DOCKER_CONTENT_TRUST:-0}

docker rm -f $wallet_vol-wallet
docker volume rm $wallet_vol


