##
## This Dockerfile builds and bundles the software-shinobi-eternal-repository-template static html files into an nginx Docker image.
##

FROM nginx:latest

MAINTAINER Software Shinobi "the.software.shinobi@gmail.com"

## Define Dockerfile Variables

ARG target_image_directory=/usr/share/nginx/html/

##

USER root

##

RUN rm -frv $target_image_directory/*

COPY . $target_image_directory/

## Verification Steps

RUN ls      $target_image_directory

###RUN find $target_image_directory
