#!/bin/bash

docker stop devops-app
docker rm devops-app
docker run -d -p 8080:8080 devops-app
