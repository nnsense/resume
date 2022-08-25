#!/bin/bash
GIT_ROOT=$1
THEME=$2

for USRDIR in $GIT_ROOT/*/ ; do
    pushd "$USRDIR"
    resume export --theme /usr/local/lib/node_modules/${THEME} --format html index.html -r resume.json
    popd 2>&1 > /dev/null
done

