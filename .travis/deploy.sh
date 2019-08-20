#!/bin/bash

githubot --token ${GH_TOKEN} \
--repo ${TRAVIS_REPO_SLUG} \
--tag ${TRAVIS_TAG} \
--title ${TRAVIS_TAG} \
--message "Release created by githubot" \
--assets ${ARTIFACTS}/*
