#!/bin/bash

##
## This script installs stuff 
##     to set up a linux server
##     suitable for newbies.
##
## This linux server will be hosted under
##     linux.softwaredeveloperthings.com
##
## Before you go, check read around my blog!
##
##     https://www.softwaredeveloperthings.com
##

##

set -e;

set -x;

## 

##cat /etc/issue;

##echo "software shinoSoftware Developer Things Linux v4.4.44 !LTS" > /etc/issue;

##cat /etc/issue;

##

apt-get update;

##
##python -m pip install mkdocs

##python -m mkdocs

apt-get install -y python3 python-pip

##pip install --upgrade pip
##apt-get install -y mkdocs

pip install --upgrade pip

pip install mkdocs

mkdocs version

mkdocs new .

ls -lha

##

echo "fin."
