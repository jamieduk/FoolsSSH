#!/bin/bash
#
#
#sudo apt-cache search ^netcat
#sudo apt install -y netcat-openbsd
#sudo apt remove -y netcat-traditional
#
port=$(shuf -i 1-6000 -n 1) # Randomize Port #1234

while true
do
    echo "Running Listener On Port $port"
    sudo socat -lf log.txt TCP4-LISTEN:$port EXEC:./test.sh
    sleep 1
done

