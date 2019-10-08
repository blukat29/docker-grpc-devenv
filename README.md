# grpc-docker-devenv

[gRPC](https://github.com/grpc/grpc) C++ development environment.
Build your gRPC C++ project without manually building gRPC runtime.

## Why this exists?

- [Official docker hub](https://hub.docker.com/r/grpc/cxx) is not hosting recent versions.
- If you mount and build inside container, resulting files will be owned by `root:root`.

## How to use this?

Suppose you have a C++ gRPC project with a Makefile.
Move to the directory where Makefile is, and then

```
docker run --rm -e MOUNT_GID=$(id -g) -e MOUNT_UID=$(id -u) -v $(pwd):/mnt -it blukat29/grpc-devenv:1.21.0 make
```

Or clone this repository and then

```
./run.sh make
```

All the build files will be owned by you, the current user.
