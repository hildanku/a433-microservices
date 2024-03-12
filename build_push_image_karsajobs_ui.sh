#!/bin/bash

# build image dari Dockerfile
docker build -t karsajobs-ui:latest .
# mengubah nama image
docker tag karsajobs-ui:latest ghcr.io/hildanku/karsajobs-ui:latest

# load password pada file pat.txt
# login ke Github Packages
cat pat.txt | docker login -u hildanku --password-stdin ghcr.io

# Upload image ke GitHub Packages
docker push ghcr.io/hildanku/karsajobs-ui:latest
