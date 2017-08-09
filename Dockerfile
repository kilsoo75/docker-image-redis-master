FROM redis

COPY redis.conf /usr/local/etc/redis/redis.conf

ENV REDIS_PASSWORD redis1234

# basic tunning
RUN sed -d 's/redis1234/$REDIS_PASSWORD/g' /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
