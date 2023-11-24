#!/bin/bash
docker build -t capstoneimg  .

docker-compose down || true

docker-compose up -d
