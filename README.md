# docker-image-redis-master
This project is for the docker image of redis master

$>docker run -d --name redis-master -p 6379:6379 kilsoo75/redis-master

The default masterauth and requirepass is 'redis1234'.
If you want to change the password, please refer to the folowing examples.

$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd -e MASTER_PASSWORD=your_pwd -p 6379:6379 kilso75/redis-master

$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd -p 6379:6379 kilso75/redis-master

$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd kilso75/redis-master


