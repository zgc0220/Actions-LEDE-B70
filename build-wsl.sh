#!/bin/bash

WORKSPACE=$(cd $(dirname $0);pwd)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RELEASE_DIR=/mnt/d/release-lede-b70 bash $WORKSPACE/build.sh
