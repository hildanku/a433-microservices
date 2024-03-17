#!/bin/bash

# build image dari Dockerfile
docker build -t order-service:latest .
# mengubah nama image
docker tag order-service:latest ghcr.io/hildanku/order-service:latest

# load password pada file pat.txt
# login ke Github Packages
cat pat.txt | docker login -u hildanku --password-stdin ghcr.io

# Upload image ke GitHub Packages
docker push ghcr.io/hildanku/order-service:latest
