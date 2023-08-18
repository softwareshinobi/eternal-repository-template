#!/bin/bash

##

set -x

set -e

##

source ./build-automation-common.sh

##

docker push $repositoryUser/$repositoryName

docker push $repositoryUser/$repositoryName:$repositoryTag
