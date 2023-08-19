#!/bin/bash

##

set -x

set -e

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

##

docker push $repositoryUser/$repositoryName

docker push $repositoryUser/$repositoryName:$repositoryTag

##

@clear-screen

@show-running-containers
