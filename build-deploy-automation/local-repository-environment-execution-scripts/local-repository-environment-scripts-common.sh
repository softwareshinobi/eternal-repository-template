#!/bin/bash

##

set -x

set -e

##

build_file_directory="../custom-build-configuration/"

## load custom docker image information

source $build_file_directory/docker-image-repository-configuration.conf 
