#!/bin/bash

##

set -x

set -e

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

## 

## cd ../../source-code

##

docker build -f ../custom-build-configuration/Dockerfile -t $repositoryUser/$repositoryName:$repositoryTag ../../source-code
