#!/bin/bash

##

set -x

set -e

##

dockerImageBase=` cat ../custom-build-configuration/Dockerfile  | grep FROM `
## dockerImageBase=` cat ../custom-build-configuration/Dockerfile  | grep FROM | cut -c6-`

dockerImageIntermediateName="intermediate-os-provisioning-docker-image"

##

rm -f /tmp/Dockerfile

echo $dockerImageBase >> /tmp/Dockerfile

cat DockerFileHack >> /tmp/Dockerfile

##sed -i 's//CONTAINER-BASE-IMAGE/'$dockerImageBase'/g' DockerFile

cat /tmp/Dockerfile

##

docker build -f /tmp/Dockerfile -t $dockerImageIntermediateName ../operating-system-provision-scripts/

fddd

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

##

ls -lha ../../repository-source-code/

rm      ../../repository-source-code/operating-system-provision-scripts

ln -s   ../operating-system-provision-scripts/ ../../repository-source-code/

ls -lha ../../repository-source-code/

##

docker build -f ../custom-build-configuration/Dockerfile -t $repositoryUser/$repositoryName:$repositoryTag ../../repository-source-code
