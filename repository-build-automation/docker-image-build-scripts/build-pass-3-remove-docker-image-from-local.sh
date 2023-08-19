#!/bin/bash

##

set -x

set -e

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

##

docker image rm $repositoryUser/$repositoryName
