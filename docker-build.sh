#!/bin/bash

if [ -z ${1+x} ]; then
    echo "You must pass the docker image version as the first and only parameter";
else
    version=$1
    podman build -t adr-manager . --arch linux/amd64 --build-arg DOCKER_TAG=$version
    podman image tag localhost/adr-manager mckinsey-sfcseate-adr-docker-local.jfrog.io/sfcseate-adr:$version
    podman image tag localhost/adr-manager mckinsey-sfcseate-adr-docker-local.jfrog.io/sfcseate-adr:latest
    podman image push mckinsey-sfcseate-adr-docker-local.jfrog.io/sfcseate-adr:latest
    podman image push mckinsey-sfcseate-adr-docker-local.jfrog.io/sfcseate-adr:$version
fi
