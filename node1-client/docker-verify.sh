docker --tlsverify \
	--tlscacert=ca.pem \
	--tlscert=cert.pem \
	--tlskey=key.pem \
	-H=node3:2376 version

# node3 = docker daemons ip address
# after running this command it's possible to run docker commands on the 
# docker-server (node3) from the client (node1).
