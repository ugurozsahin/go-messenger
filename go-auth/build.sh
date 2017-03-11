#!/bin/sh 
set -e 
docker run --rm -i \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    usman/go-builder:1.8

docker build -t ugurozsahin/go-auth .
