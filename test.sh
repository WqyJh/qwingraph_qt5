#!/bin/bash

. ./common.sh

install_deps

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

cwd=$(dirname $(realpath $0))

build_qwingraph
test -x qwingraph
passed=$?
echo $passed

cd $cwd
rm -rf tmp/

if [ ${passed} -eq 0 ]; then
    printf "${GREEN}test passed${NC}\n"
    exit 0
else
    printf "${RED}test failed${NC}\n"
    exit 1
fi