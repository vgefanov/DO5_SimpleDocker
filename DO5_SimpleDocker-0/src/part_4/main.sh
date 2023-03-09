docker build -f Dockerfile -t docker_image:part_4 "../"
docker run --name docker_container_4 -p 80:81 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -dt docker_image:part_4
sleep 3
open http://localhost:80/status
