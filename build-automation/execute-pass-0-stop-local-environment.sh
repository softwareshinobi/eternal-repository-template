#!/bin/bash

##

set -x

set -e

##

source ./local-environment-common.sh

##

cd ../source-code

##

docker-compose down --remove-orphans
