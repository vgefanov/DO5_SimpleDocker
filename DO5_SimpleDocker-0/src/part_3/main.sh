#!/bin/bash

docker pull nginx
docker run --name docker_container_3 -dt -p 81:81 nginx
docker exec -it docker_container_3 apt update
docker exec -it docker_container_3 apt install -y gcc libfcgi-dev spawn-fcgi
docker cp mini_server.c docker_container_3:mini_server.c
docker cp nginx.conf docker_container_3:etc/nginx/nginx.conf
docker exec docker_container_3 nginx -s reload
docker exec docker_container_3 bash -c 'gcc mini_server.c -lfcgi -o server'
docker exec docker_container_3 bash -c 'spawn-fcgi -p 8080 /server'
docker exec docker_container_3 bash -c 'service nginx start'
open http://localhost:81
