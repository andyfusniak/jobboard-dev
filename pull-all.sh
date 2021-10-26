#!/bin/bash
if [ $# -eq 0 ]
  then
    echo 'pull-all.sh VERSION'
    exit 1
fi

version=$1

docker image pull -q gcr.io/codepyjamas/jobboard-web:latest
docker image pull -q gcr.io/codepyjamas/jobboard-web:$version
docker image pull -q gcr.io/codepyjamas/jobboard-admin:latest
docker image pull -q gcr.io/codepyjamas/jobboard-admin:$version
docker image pull -q gcr.io/codepyjamas/jobboard-tools:latest
docker image pull -q gcr.io/codepyjamas/jobboard-tools:$version
docker image ls
