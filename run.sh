#!/bin/sh
set -e

docker build -t grpc-devenv .

docker run --rm \
    -e MOUNT_UID=$(id -u) -e MOUNT_GID=$(id -g) \
    -v $(pwd):/mnt \
    -it grpc-devenv $@
