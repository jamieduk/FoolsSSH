#!/bin/bash
#
#
#
output_file="output.txt"
srv="J~Net-Server" # jnet
u="root" # admin
count=0
stty -echo
printf "Password: "
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
    printf "Password: "
    read ps
    if [ -z "$ps" ]
    then
    echo "Wrong Password!"
    echo "Access Denied!"
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

