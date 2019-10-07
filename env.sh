#!/bin/sh
set -e

if [ -z "$MOUNT_GID" ]; then
    echo "\$MOUNT_GID not set. Assuming 1000."
    MOUNT_GID=1000
fi
if [ -z "$MOUNT_UID" ]; then
    echo "\$MOUNT_UID not set. Assuming 1000."
    MOUNT_UID=1000
fi

# Create a user with gid = $MOUNT_GID uid = $MOUNT_UID
groupadd -g $MOUNT_GID mount_group
useradd -u $MOUNT_UID -g $MOUNT_GID mount_user

# Build as the new user
cd /mnt
su mount_user -c "$@"
