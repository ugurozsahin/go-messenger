#!/bin/sh

docker run --rm -it \
    -v $PWD:/go/src/github.com/ugurozsahin/go-messenger/go-auth/ \
    -e SOURCE_PATH=github.com/ugurozsahin/go-messenger/go-auth/ \
    usman/go-builder:1.4 bash

docker build -t ugurozsahin/go-auth .
