#!/bin/bash
#
#
#
output_file="output.txt"
srv="J~Net-Server" # jnet
u="root" # admin
count=0
stty -echo
printf "password for $u: "
read ps
stty echo
printf "\n"
echo "Entered Password: $ps" >> $output_file
sed '/^$/d' $output_file > fixed.txt
mv fixed.txt output.txt

if [ -z "$ps" ]
then
    echo "Wrong Password!"
    printf "\n"
    printf "password for $u: "
    read ps
    if [ -z "$ps" ]
    then
        echo "Wrong Password!"
        echo "Authentication failure"
        echo "Access Denied!"
        echo "Your IP Has Been Logged!"
        exit
    
else
echo "Entered Password: $ps" >> $output_file
    sed '/^$/d' $output_file > fixed.txt
    mv fixed.txt output.txt
fi

fi
# Once in this next bit its trapped there till quit!
while true
do

msg=`cat message_to_client.txt`
 if [ -z "$msg" ]
    then
        echo ""
    else
        echo "$msg"
 fi
    stty -echo
printf "$u@$srv:~"
    read Y
    echo "$Y" >> $output_file
    sed '/^$/d' $output_file > fixed.txt
    mv fixed.txt output.txt
      if [[ $Y = *ls* ]];
        then
          echo ".  .."
      fi
done

