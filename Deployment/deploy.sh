#!/bin/bash

docker pull nichols160/nichols-ceg3120:latest

docker stop my-app || true
docker rm my-app || true

docker run -d --name my-app -p 80:80 nichols160/nichols-ceg3120:latest