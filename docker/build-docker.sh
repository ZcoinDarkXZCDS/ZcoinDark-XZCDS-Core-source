#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-zcoindarkpay/zcoindarkd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/zcoindarkd docker/bin/
cp $BUILD_DIR/src/zcoindark-cli docker/bin/
cp $BUILD_DIR/src/zcoindark-tx docker/bin/
strip docker/bin/zcoindarkd
strip docker/bin/zcoindark-cli
strip docker/bin/zcoindark-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
