#!/bin/bash

##

set -x

set -e

##

source ./build-automation-common.sh

## 

cd ../source-code

##

docker build -t $repositoryUser/$repositoryName:$repositoryTag .
