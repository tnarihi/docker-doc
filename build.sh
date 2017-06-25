#! /bin/bash

DOCKER_BUILD_ARGS="--build-arg http_proxy=${http_proxy} --build-arg https_proxy=${https_proxy}"
docker build ${DOCKER_BUILD_ARGS} -t cuda-doc .
