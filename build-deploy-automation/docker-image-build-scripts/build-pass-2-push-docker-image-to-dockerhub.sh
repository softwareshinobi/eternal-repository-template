#!/bin/bash

##

set -x

set -e

##

source ./docker-image-repository-configuration.conf

##

docker push $repositoryUser/$repositoryName

docker push $repositoryUser/$repositoryName:$repositoryTag
