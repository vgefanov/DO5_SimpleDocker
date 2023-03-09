FROM nginx
COPY "part_3/mini_server.c" .
COPY "part_4/nginx.conf" /etc/nginx/
COPY "part_4/start_nginx.sh" ./start_nginx.sh
RUN apt-get update && apt install -y gcc libfcgi-dev spawn-fcgi;
ENTRYPOINT [ "/bin/bash", "/start_nginx.sh" ]
