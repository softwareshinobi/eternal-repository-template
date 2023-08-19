#!/bin/bash

##

set -x

set -e

##

source ./local-repository-environment-scripts-common.sh

##

cd $build_file_directory

##

docker-compose down --remove-orphans

docker-compose up -d

##
