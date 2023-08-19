#!/bin/bash

##

set -x

set -e

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

##

ls -lha ../../repository-source-code/

rm      ../../repository-source-code/operating-system-provision-scripts

ln -s   ../operating-system-provision-scripts/ ../../repository-source-code/

ls -lha ../../repository-source-code/

##

docker build -f ../custom-build-configuration/Dockerfile -t $repositoryUser/$repositoryName:$repositoryTag ../../repository-source-code
