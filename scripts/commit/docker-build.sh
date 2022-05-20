#!/bin/sh

echo "=========== Building Docker Image: Start =============="

docker build -t $DOCKERHUB_USERNAME/$IMAGE_NAME:$GO_PIPELINE_LABEL . -f Docker/Dockerfile.agent

echo "=========== Building Docker Image: Done  =============="