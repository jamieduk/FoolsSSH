The SSHFool concept is to pretend to be ssh server while tracking would be hackers methods,
and commands they use can be logged along with there ip.

First plan is to listen on a port

# FoolsSSH

sudo chmod +x *.sh

./Run.sh

and test viia another tab

 nc localhost 160

Where 160 is port number given by Run.sh


Github Link

git clone https://github.com/jamieduk/FoolsSSH.git



next stage is to react to certain commands as if they worked for example ls will return a dummy payload of....

.  ..  Backup



~~~~~~~~~~~~~~~~~~~~~~~~

nc -l 1234

port can randomize or you can change it.

Test using 

nc ip port




https://www.varonis.com/blog/netcat-commands


nc -l -p 1299

nc localhost 1299

nc -l -p 1234 -k --sh-exec ./test.sh

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

reverse shell

nc -n -v -l -p 5555 -e /bin/bash

nc -n -v -l -p 1234 -e test.sh





