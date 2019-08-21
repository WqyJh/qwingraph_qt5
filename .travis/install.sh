#!/bin/bash

set -x

function docker_pull()
{
    if [[ x${IMAGE} != x ]]; then
        docker pull ${IMAGE}
    fi
}

pip install githubot==0.6.1 && docker_pull
