#!/bin/sh

echo "=========== Tag Docker Image: Start =============="

snik test `cat image_ref`

echo "=========== Tag Docker Image: Done  =============="