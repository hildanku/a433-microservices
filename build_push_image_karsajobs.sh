#!/bin/bash

# build image dari Dockerfile
docker build -t karsajobs:latest .
# mengubah nama image
docker tag karsajobs:latest ghcr.io/hildanku/karsajobs:latest

# load password pada file pat.txt
# login ke Github Packages
cat pat.txt | docker login -u hildanku --password-stdin ghcr.io

# Upload image ke GitHub Packages
docker push ghcr.io/hildanku/karsajobs:latest