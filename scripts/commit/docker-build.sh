#!/bin/sh

while getopts d:i: flag
do
    case "${flag}" in
        d) dockerhub_username=${OPTARG};;
        i) image_name=${OPTARG};;
    esac
done

echo "=========== Building Docker Image: Start =============="

docker build -t $dockerhub_username/$image_name:$GO_PIPELINE_LABEL . -f Docker/Dockerfile.agent

echo "=========== Building Docker Image: Done  =============="