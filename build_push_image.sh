#!/bin/bash

# build image dari Dockerfile
docker build -t item-app:v1 .

# melihat daftar image
docker image ls

# mengubah nama image
docker tag item-app:v1 ghcr.io/hildanku/item-app:v1

# load password pada file pat.txt
# login ke Github Packages
cat pat.txt | docker login -u hildanku --password-stdin ghcr.io

# Upload image ke GitHub Packages
docker push ghcr.io/hildanku/item-app:v1
