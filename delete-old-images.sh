#!/bin/bash
if [ $# -eq 0 ]
  then
    echo 'delete-all-images.sh VERSION'
    exit 1
fi

version=$1

docker image rm gcr.io/codepyjamas/jobboard-web:$version
docker image rm gcr.io/codepyjamas/jobboard-admin:$version
docker image rm gcr.io/codepyjamas/jobboard-tools:$version
docker image ls
