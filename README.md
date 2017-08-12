# docker-image-redis-master

##### This project is for the docker image of redis master ([Dockerfile](https://github.com/kilsoo75/docker-image-redis-master/blob/master/Dockerfile))

<pre><code>$>docker run -d --name redis-master -p 6379:6379 kilsoo75/redis-master</code></pre>

The default masterauth and requirepass is 'redis1234'.
<br>
If you want to change the password, please refer to the folowing examples.

<pre><code>$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd -e MASTER_PASSWORD=your_pwd -p 6379:6379 kilso75/redis-master
$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd -p 6379:6379 kilso75/redis-master
$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd kilso75/redis-master</code></pre>

##### For the cluster using the sentinel, the requirepass and masterauth should be same. So you shoud set only the 'REDIS_PASSWORD' not set 'MASTER_PASSWORD' like following.
<pre><code>$>docker run -d --name redis-master -e REDIS_PASSWORD=your_pwd kilso75/redis-master</code></pre>

