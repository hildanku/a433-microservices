#!/bin/bash

# build image dari Dockerfile
docker build -t shipping-service:latest .
# mengubah nama image
docker tag shipping-service:latest ghcr.io/hildanku/shipping-service:latest

# load password pada file pat.txt
# login ke Github Packages
cat pat.txt | docker login -u hildanku --password-stdin ghcr.io

# Upload image ke GitHub Packages
docker push ghcr.io/hildanku/shipping-service:latest
