```bash
matiastolppanen@Matias_Mac ~ % docker run -d --name ubuntu devopsdockeruh/simple-web-service:ubuntu
.
.
.
matiastolppanen@Matias_Mac ~ % docker run -d --name alpine devopsdockeruh/simple-web-service:alpine
.
.
.
matiastolppanen@Matias_Mac ~ % docker container ls -s
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES     SIZE
3011034e1477   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   23 seconds ago   Up 22 seconds             alpine    530B (virtual 15.7MB)
3b59b4ba7885   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   51 seconds ago   Up 50 seconds             ubuntu    1.21kB (virtual 83MB)
matiastolppanen@Matias_Mac ~ % docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
matiastolppanen@Matias_Mac ~ % docker exec -it ubuntu bash
root@3b59b4ba7885:/usr/src/app# tail -f ./text.log
2023-05-04 17:06:30 +0000 UTC
2023-05-04 17:06:32 +0000 UTC
2023-05-04 17:06:34 +0000 UTC
2023-05-04 17:06:36 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-04 17:06:38 +0000 UTC
2023-05-04 17:06:40 +0000 UTC
2023-05-04 17:06:42 +0000 UTC
2023-05-04 17:06:44 +0000 UTC
2023-05-04 17:06:46 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-04 17:06:48 +0000 UTC
2023-05-04 17:06:50 +0000 UTC
π•2023-05-04 17:06:52 +0000 UTC
read escape sequence
matiastolppanen@Matias_Mac ~ % docker exec -it alpine sh  
/usr/src/app # tail -f ./text.log
2023-05-04 17:06:56 +0000 UTC
2023-05-04 17:06:58 +0000 UTC
2023-05-04 17:07:00 +0000 UTC
2023-05-04 17:07:02 +0000 UTC
2023-05-04 17:07:04 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-04 17:07:06 +0000 UTC
2023-05-04 17:07:08 +0000 UTC
2023-05-04 17:07:10 +0000 UTC
2023-05-04 17:07:12 +0000 UTC
2023-05-04 17:07:14 +0000 UTC
read escape sequence
matiastolppanen@Matias_Mac ~ % 
```
