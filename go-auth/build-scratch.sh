#!/bin/sh
set -e
docker run --rm -i \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    ugurozsahin/gobuilder
docker build -t ugurozsahin/go-auth-scratch -f Dockerfile.scratch .