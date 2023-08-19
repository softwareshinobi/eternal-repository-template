#!/bin/bash

##

set -x

set -e

##

source ./local-repository-environment-scripts-common.sh

##

docker exec -it $repositoryName /bin/bash
