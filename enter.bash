#!/bin/bash

SCRIPT_DIR=`dirname $0`
source $SCRIPT_DIR/common.conf

#IMAGE_NAME="mb_image"
#CONTAINER_NAME="mb_container"
#export PATH_PREFIX=`cd \`dirname $0\`;pwd`

#echo $PATH_PREFIX

# $CONTAINER_NAMEにログインする
docker exec -it $CONTAINER_NAME bash
