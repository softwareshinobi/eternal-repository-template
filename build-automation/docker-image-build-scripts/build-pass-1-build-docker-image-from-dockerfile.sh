#!/bin/bash

##

set -x

set -e

##

source ../docker-image-repository-configuration.conf

## 

## cd ../../source-code

##

docker build -f ../Dockerfile -t $repositoryUser/$repositoryName:$repositoryTag ../../source-code
