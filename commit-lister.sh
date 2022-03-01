#!/bin/sh

WORKDIR=$1
COMMIT_ID=$2

cd $1

INFO=`git log -n1 --date=iso $2 | grep Date: | sed -E "s/Date: +//"`


echo -e "${INFO}\t${COMMIT_ID}"
