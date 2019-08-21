#!/bin/bash

set -x

TRAVIS_TAG=testtag
DIR=${TRAVIS_REPO_SLUG}/${TRAVIS_TAG}
TARGET=${DIR}/qwingraph-${NAME}

mkdir -p ${DIR}/ && \
mv tmp/qwingraph/qwingraph ${TARGET} && \
githubot file upload --token ${CACHE_TOKEN} --repo ${CACHE_REPO} ${TARGET}
