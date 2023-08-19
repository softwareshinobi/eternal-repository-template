#!/bin/bash

##

set -x

set -e

##

source ./docker-image-repository-configuration.conf

##

docker image rm $repositoryUser/$repositoryName
