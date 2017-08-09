FROM redis

COPY redis.conf /usr/local/etc/redis/redis.conf

ENV REDIS_PASSWORD redis1234

# basic tunning
RUN sed -i 's/redis1234/'"$REDIS_PASSWORD"'/g' /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
