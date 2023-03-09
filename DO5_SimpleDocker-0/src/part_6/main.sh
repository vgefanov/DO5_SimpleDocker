#!/bin/bash

docker-compose build
docker-compose up -d
open http://localhost
