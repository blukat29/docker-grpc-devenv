#!/bin/bash

SCRIPT_DIR=$(dirname $0)
pushd $SCRIPT_DIR
docker build -t grpc-devenv .
popd

docker run --rm \
    -e MOUNT_UID=$(id -u) -e MOUNT_GID=$(id -g) \
    -v $(pwd):/mnt \
    -it grpc-devenv $@
