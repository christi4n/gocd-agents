#!/bin/sh

echo "=========== Building Docker Image: Start =============="

# docker build -t $DOCKERHUB_USERNAME/$IMAGE_NAME:$GO_PIPELINE_LABEL . -f Docker/Dockerfile.agent
docker built -t `cat image_ref` . -f Docker/Dockerfile.agent
snyk container test `cat image_ref`
echo "=========== Building Docker Image: Done  =============="