```bash
matiastolppanen@Matias_Mac large_project % docker compose up -d                             
[+] Running 5/0
 ✔ Container large_project-redis-1     Running                                                                                                       0.0s 
 ✔ Container large_project-db-1        Running                                                                                                       0.0s 
 ✔ Container large_project-frontend-1  Running                                                                                                       0.0s 
 ✔ Container large_project-backend-1   Running                                                                                                       0.0s 
 ✔ Container large_project-nginx-1     Running                                                                                                       0.0s 
matiastolppanen@Matias_Mac large_project % cd nmap-docker 
matiastolppanen@Matias_Mac nmap-docker % docker run -it --rm --network host nmap localhost
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-08 13:45 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.0000050s latency).
Other addresses for localhost (not scanned): ::1
Not shown: 998 closed tcp ports (reset)
PORT    STATE    SERVICE
80/tcp  filtered http
111/tcp open     rpcbind

Nmap done: 1 IP address (1 host up) scanned in 1.28 seconds
matiastolppanen@Matias_Mac nmap-docker % 
```
