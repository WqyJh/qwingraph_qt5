#!/bin/bash

. ./common.sh

install_deps

cwd=$(pwd)

build_qwingraph
make install

cd $cwd
rm -rf tmp/
