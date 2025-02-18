#!/usr/bin/env bash

source ./versions.sh

time docker build \
	--build-arg CROSSBAR_ARCH=amd64 \
	--build-arg CROSSBAR_BUILD_DATE=${CROSSBAR_BUILD_DATE} \
	--build-arg CROSSBAR_VCS_REF=${CROSSBAR_VCS_REF} \
	--build-arg CROSSBAR_VERSION=${CROSSBAR_VERSION} \
	-t quantivly/crossbar:pypy-amd64-${CROSSBAR_VERSION} \
	-f Dockerfile.pypy-slim-custom .

docker images crossbario/crossbar:pypy-amd64
