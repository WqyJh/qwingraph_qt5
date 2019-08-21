#!/bin/bash

. ./common.sh

install_deps

cwd=$(pwd)

build_qwingraph
make install

cd $cwd

case "$1" in
    --keep)
    echo "keep tmp/"
    ;;
    *)
    echo "clean tmp/"
    rm -rf tmp/
    ;;
esac
