#!/bin/bash

sudo apt-get update && \
sudo apt-get install -y python3 python3-setuptools python3-pip && \
sudo pip3 install githubot && \
githubot --token ${GH_TOKEN} \
--repo ${TRAVIS_REPO_SLUG} \
--tag ${TRAVIS_TAG} \
--title ${TRAVIS_TAG} \
--message "Release created by githubot" \
--assets ${ARTIFACTS}/*
