```bash
matiastolppanen@Matias_Mac part_1 % docker run -it --name tmp ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
.
.
.
Input website:
helsinki.fi
Searching..
sh: 1: curl: not found
Input website:                            
matiastolppanen@Matias_Mac part_1 % docker exec -it tmp bash
root@a3a1944e1345:/# apt-get update 
.
.
.
root@a3a1944e1345:/# apt-get -y install curl
.
.
.
root@a3a1944e1345:/# exit
exit
matiastolppanen@Matias_Mac part_1 % docker attach tmp
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.20.1</center>
</body>
</html>
Input website:
matiastolppanen@Matias_Mac part_1 % 
```
