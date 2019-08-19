#!/bin/bash

set -x

function install_deps()
{
    apt-get update && \
    apt-get install -y unzip patch gcc g++ make qttools5-dev-tools qtbase5-dev-tools qtbase5-dev qt5-qmake
}

function build_qwingraph()
{
    rm -rf tmp/
    mkdir -p tmp/
    unzip -o qwingraph_src.zip -d tmp/qwingraph
    ./patch.sh tmp/qwingraph
    cd tmp/qwingraph
    QT_SELECT=qt5-x86_64-linux-gnu ./build.linux
}