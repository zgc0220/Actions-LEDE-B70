#!/bin/bash

WORKSPACE=$(cd $(dirname $0);pwd)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin bash $WORKSPACE/build.sh
