#!/bin/bash

##

set -x

set -e

##

dockerImageBase=` cat ../custom-build-configuration/Dockerfile  | grep FROM `
## dockerImageBase=` cat ../custom-build-configuration/Dockerfile  | grep FROM | cut -c6-`

dockerImageIntermediateName="os-provisioning-docker-image"

##

rm -f /tmp/Dockerfile

echo $dockerImageBase >> /tmp/Dockerfile

cat DockerFileHack >> /tmp/Dockerfile

##sed -i 's//CONTAINER-BASE-IMAGE/'$dockerImageBase'/g' DockerFile

cat /tmp/Dockerfile

##



##

origDockerfile="../custom-build-configuration/Dockerfile"

sampleFile="/tmp/asfsafsff";

reset;clear;

rm -f $sampleFile

cp $origDockerfile $sampleFile

## cp /tmp/Dockerfile $sampleFile

cat $sampleFile

sed -i 's/\:/pizza/g' $sampleFile

sed -i '/FROM/d' $sampleFile

cat $sampleFile

## 

aaa="/tmp/asfdasfasfsafsafa323"

rm -f $aaa

echo "FROM "$dockerImageIntermediateName  >> $aaa

cat $sampleFile >> $aaa

cat $aaa

##

source ../custom-build-configuration/docker-image-repository-configuration.conf

##

##ls -lha ../../repository-source-code/

##rm      ../../repository-source-code/operating-system-provision-scripts

##ln -s   ../operating-system-provision-scripts/ ../../repository-source-code/

## ls -lha ../../repository-source-code/

docker build -f $aaa -t $repositoryName ../operating-system-provision-scripts/

##

##docker build -f ../custom-build-configuration/Dockerfile -t $repositoryUser/$repositoryName:$repositoryTag ../../repository-source-code
