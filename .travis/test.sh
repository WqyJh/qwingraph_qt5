#!/bin/bash

set -x

docker run --security-opt seccomp:unconfined -it \
-v $TRAVIS_BUILD_DIR:/tmp/qwingraph_qt5 \
${IMAGE} sh -c 'cd /tmp/qwingraph_qt5; ./test.sh'

exit $?