#!/bin/bash

set -x

mkdir -p ${DIR}/ && \
mv qwingraph ${TARGET} && \
githubot file upload --token ${CACHE_TOKEN} --repo ${CACHE_REPO} ${TARGET}
