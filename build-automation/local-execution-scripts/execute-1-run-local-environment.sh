#!/bin/bash

##

set -x

set -e

##

source ./local-execution-scripts-common.sh

##

cd ../source-code

##

docker-compose down --remove-orphans

docker-compose up -d
