docker build -f Dockerfile -t docker_image:part_5 "../"
docker run --name docker_container_5 -p 80:81 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -dt docker_image:part_5
dockle -ak NGINX_GPGKEY docker_image:part_5
