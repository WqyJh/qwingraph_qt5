#!/bin/bash

apt-get update && \
apt-get install -y python3 python3-pip && \
pip3 install githubot && \
githubot --token ${GH_TOKEN} \
--repo ${TRAVIS_REPO_SLUG} \
--tag ${TRAVIS_TAG} \
--title ${TRAVIS_TAG} \
--message "Release created by githubot" \
--assets ${ARTIFACTS}/*
