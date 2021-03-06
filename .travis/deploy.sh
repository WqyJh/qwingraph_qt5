#!/bin/bash

set -x

DIR=${TRAVIS_REPO_SLUG}/${TRAVIS_TAG}

githubot file download --token ${CACHE_TOKEN} --repo ${CACHE_REPO} ${DIR} && \
\
githubot release --token ${DEPLOY_TOKEN} --repo ${TRAVIS_REPO_SLUG} \
--tag ${TRAVIS_TAG} --title ${TRAVIS_TAG} --message "Released by githubot" ${DIR}/* && \
\
githubot file delete --token ${CACHE_TOKEN} --repo ${CACHE_REPO} ${DIR}
