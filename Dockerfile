FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
ENV REDIS_PASSWORD redis1234
RUN echo "net.ipv4.ip_nonlocal_bind=1" >> /etc/sysctl.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
