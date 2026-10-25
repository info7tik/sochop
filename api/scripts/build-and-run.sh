#!/bin/bash

docker build -t soshop-api -f docker/*.dockerfile .
docker run -p 8080:8888 soshop-api
