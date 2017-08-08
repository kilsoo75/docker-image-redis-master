FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
ENV REDIS_PASSWORD redis1234
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
