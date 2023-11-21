#!/bin/bash
docker build -t reactjsimg .

docker-compose down || true

docker-compose up -d
