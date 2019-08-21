#!/bin/bash

pip install githubot==0.6.1 && \
[[ ! -z ${IMAGE} ]] && docker pull ${IMAGE}
