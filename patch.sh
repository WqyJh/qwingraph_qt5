#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage:"
    echo "$0 <target_dir>    apply the patch to <target_dir>"
    exit 1
fi

target_dir=$1
patch -d $target_dir < qwingraph-V.1.3.patch
chmod +x $target_dir/build.linux
