#!/bin/bash

docker run -it qwingraph_qt5 sh -c 'cd /tmp/qwingraph_qt5; ./test.sh'

exit $?