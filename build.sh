#!/bin/bash

if [ $# -ne 1 ]; then
    echo "./build.sh version"
    exit
fi

mkdir _

curl ix.io/client > _/ix_linux_amd64
curl ix.io/client > _/ix_darwin_amd64
curl ix.io/client > _/ix_darwin_arm64

nami release github.com/namipkg/ix $1 _

rm -rf _
