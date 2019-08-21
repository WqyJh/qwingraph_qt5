#!/bin/bash

set -x

[[ x$TRAVIS_TAG == x ]] && TRAVIS_TAG=untagged-$(date +%d%m%Y-%H%M%S)
DIR=${TRAVIS_REPO_SLUG}/${TRAVIS_TAG}
TARGET=${DIR}/qwingraph-${NAME}

mkdir -p ${DIR}/ && \
cp tmp/qwingraph/qwingraph ${TARGET} && \
githubot file upload --token ${CACHE_TOKEN} --repo ${CACHE_REPO} ${TARGET}
