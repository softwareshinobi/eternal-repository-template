##
## This Dockerfile builds and bundles the software-shinobi-eternal-repository-template static html files into an nginx Docker image.
##

FROM ubuntu:14.04

MAINTAINER Software Shinobi "the.software.shinobi@gmail.com"

## Define Dockerfile Variables

ARG root-project-directory="/"

ARG target_image_directory=/usr/share/nginx/html/

ARG operating_system_provision_scripts_directory=operating-system-provision-scripts

ARG operating_system_provision_script_file=operating-system-provision-script.sh

##

USER root

## Run Operating System Provision Scripts

RUN ls          /

COPY            $operating_system_provision_scripts_directory /

RUN ls          /

RUN chmod +x    /$operating_system_provision_script_file

RUN             /$operating_system_provision_script_file

##

RUN rm -frv $target_image_directory/*

COPY . $target_image_directory/

## Verification Steps

RUN ls      $target_image_directory

###RUN find $target_image_directory
