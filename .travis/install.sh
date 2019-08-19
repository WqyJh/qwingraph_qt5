#!/bin/bash

docker pull ${image}
docker run -it -v $(pwd):/tmp/qwingraph_qt5 --name qwingraph_qt5 ${image}