#!/bin/bash
if [ $# -eq 0 ]
  then
    echo 'delete-all-images.sh VERSION'
fi

version=$1

docker image rm -q gcr.io/codepyjamas/jobboard-web:$version
docker image rm -q gcr.io/codepyjamas/jobboard-admin:$version
docker image rm -q gcr.io/codepyjamas/jobboard-tools:$version
docker image ls
