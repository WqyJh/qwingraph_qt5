#!/bin/bash

docker run --security-opt seccomp:unconfined -it \
-v $TRAVIS_BUILD_DIR:/tmp/qwingraph_qt5 \
-v $ARTIFACTS:$ARTIFACTS \
${IMAGE} sh -c 'cd /tmp/qwingraph_qt5; ./test.sh'

exit $?