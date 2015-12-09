#!/bin/bash

SCRIPT_DIR=`dirname $0`
source $SCRIPT_DIR/common.conf

#IMAGE_NAME="mb_image"
#CONTAINER_NAME="mb_container"
#export PATH_PREFIX=`cd \`dirname $0\`;pwd`

#echo $PATH_PREFIX

# 特定のイメージでコンテナを起動し、ログインする
docker run -it --rm  $IMAGE_NAME bash
