#!/bin/sh

echo "=========== Building Docker Image: Start =============="

ls -al

docker build -t amarissuisse/gocd-agent-java8:$GO_PIPELINE_LABEL . -f Docker/Dockerfile.agent

echo "=========== Building Docker Image: Done  =============="