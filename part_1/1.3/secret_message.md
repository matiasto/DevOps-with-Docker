```bash
matiastolppanen@Matias_Mac part_1 % docker run -d --name tmp devopsdockeruh/simple-web-service:ubuntu
.
.
.
matiastolppanen@Matias_Mac part_1 % docker exec -it tmp bash                                         
root@b4991273a1f6:/usr/src/app# tail -f ./text.log
2023-05-02 20:27:44 +0000 UTC
2023-05-02 20:27:46 +0000 UTC
2023-05-02 20:27:48 +0000 UTC
2023-05-02 20:27:50 +0000 UTC
2023-05-02 20:27:52 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-02 20:27:54 +0000 UTC
2023-05-02 20:27:56 +0000 UTC
2023-05-02 20:27:58 +0000 UTC
2023-05-02 20:28:00 +0000 UTC
2023-05-02 20:28:02 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-02 20:28:04 +0000 UTC
2023-05-02 20:28:06 +0000 UTC
•π2023-05-02 20:28:08 +0000 UTC
π•2023-05-02 20:28:10 +0000 UTC
read escape sequence
matiastolppanen@Matias_Mac part_1 % 
```
