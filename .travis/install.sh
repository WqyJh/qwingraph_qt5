#!/bin/bash

docker pull ${IMAGE}
docker run -it -v $(pwd):/tmp/qwingraph_qt5 --name qwingraph_qt5 ${IMAGE}