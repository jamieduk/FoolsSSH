# FoolSSH (Solo Blue Team Tools)

The SSHFool concept is to pretend to be ssh server while tracking would be hackers methods,
and commands they use can be logged along with there real ip (hopefully).

First plan is to listen on a port (it randomizes by default)!

You need both files with executable perms to make it work.

client side ("Hacker") can connect via nc on a port of your choising and every keystroke can be logged!

sudo chmod +x *.sh

./Run.sh

and test viia another tab

 nc localhost 160

Where 160 is port number given by Run.sh


Github Link

git clone https://github.com/jamieduk/FoolsSSH.git



next stage is to react to certain commands as if they worked for example ls will return a dummy payload of....

.  ..  Backup

* Now responds to ls you can customize and add your own.

* Logs user input of "Hackers"!


Future Releases?
The next version will be smarter and allow a few guesses 1st.

Hopefully can properly imatate a real ssh response, also 
instead of having to use nc.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

nc -l 1234

port can randomize or you can change it.

Test using 

nc ip port








