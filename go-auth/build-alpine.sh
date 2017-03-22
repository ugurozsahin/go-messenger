#!/bin/sh
set -e
docker run --rm -i \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    ugurozsahin/gobuilder:v0.1
docker build -t ugurozsahin/go-auth-alpine -f Dockerfile.alpine .