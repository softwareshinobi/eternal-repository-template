#!/bin/bash

##

set -x

set -e

##

source ./build-automation-common.sh

##

docker image rm $repositoryUser/$repositoryName
