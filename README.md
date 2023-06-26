# docker-deep-dive-lab
Commands for using TLS between the docker daemon and the client

Had some problem while creating the Docker Deep Dive lab, so I've added some of the file's that I've used, in case I have to set it up again. 

References
This configuration is for a lab in the book: Docker Deep Dive: Zero to Hero in a Single Book(Kindle version) by Nigel Poulton 
Page that I found helpful for configuring SSL for the client: Docker Docs - Protect the Docker daemon socket: https://docs.docker.com/engine/security/protect-access

Other helpful resources:
netstat -an |grep LISTEN, showed that my daemon was only running on the localhost address. This was due to using 127.0.0.1 in the /etc/hosts file, for the address used by the docekerd command. I 
fixed this by changing to one of the ethernet addresses in the hosts file.
The following line in combination with node3 pointing to localhost, caused the daemon to listen only on the localhost address:
  ExecStart=/usr/bin/dockerd -H tcp://node3:2376 (this was added with the "systemctl edit docker" command).
