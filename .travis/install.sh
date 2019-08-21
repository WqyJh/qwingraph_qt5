#!/bin/bash

set -x

pip install githubot==0.6.1 && \
[[ x${IMAGE} != x ]] && docker pull ${IMAGE}
