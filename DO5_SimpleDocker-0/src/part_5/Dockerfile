FROM nginx
RUN apt-get update && apt-get install -y gcc libfcgi-dev spawn-fcgi; \
    apt-get clean && rm -rf /var/lib/apt/lists/*; 
COPY "part_3/mini_server.c" .
COPY "part_5/nginx.conf" /etc/nginx/
COPY "part_5/start_nginx.sh" ./start_nginx.sh
COPY "part_5/build_server.sh" ./build_server.sh
RUN bash ./build_server.sh
RUN chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /server; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chown -R nginx:nginx /server && chmod -R 777 /server; \
    chown -R nginx:nginx /start_nginx.sh && chmod -R 777 /start_nginx.sh; \
    chmod u-s /usr/bin/gpasswd; \
    chmod u-s /usr/bin/newgrp; \
    chmod u-s /bin/su; \
    chmod u-s /bin/mount; \
    chmod u-s /bin/umount; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod 255 /usr/bin/expiry; \
    chmod 255 /usr/bin/wall; \
    chmod 255 /sbin/unix_chkpwd; \
    chmod 255 /usr/bin/chage; \
    chmod 755 /usr/bin/passwd
USER nginx
HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1
ENTRYPOINT [ "/bin/bash", "/start_nginx.sh" ]
