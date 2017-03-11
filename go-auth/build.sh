#!/bin/sh

docker run --rm -it \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    usman/go-builder:1.4 bash

docker build -t ugurozsahin/go-auth .
