#!/bin/bash

declare repo="vgrygoruk/browsermobproxy"
declare -a versions=("2.1.3" "2.1.4")
declare latest="2.1.4"

for version in "${versions[@]}"; do
  docker build -t $repo:$version --build-arg VERSION=$version .
  docker push $repo:$version
done 

docker tag $repo:$version $repo:latest
docker push $repo:latest
