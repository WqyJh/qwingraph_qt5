#!/bin/bash

docker run -it -v $TRAVIS_BUILD_DIR:/tmp/qwingraph_qt5 ${IMAGE} sh -c 'cd /tmp/qwingraph_qt5; ./test.sh'

exit $?