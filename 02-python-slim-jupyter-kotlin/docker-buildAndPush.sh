#!/bin/sh

USER_NAME=$1
TAG=$2
IMG_NAME=jupyterlab-kotlin
REGISTRY=docker.io/"$USER_NAME"/"$IMG_NAME"

docker login --username="$USER_NAME"

docker build -t "$USER_NAME"/"$IMG_NAME":"$TAG" -t "$USER_NAME"/"$IMG_NAME":latest .

docker tag "$USER_NAME"/"$IMG_NAME":"$TAG" "$REGISTRY"
docker tag "$USER_NAME"/"$IMG_NAME":latest "$REGISTRY"

docker push "$REGISTRY"
