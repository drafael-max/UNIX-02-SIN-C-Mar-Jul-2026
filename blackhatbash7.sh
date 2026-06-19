#!/bin/bash
grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt
grep -e "35.237.4.214" -e "13.66.139.0" log.txt
ps
ps | grep TTY
ps | grep tty
ps | grep -i tty
grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt
awk '{print $1}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.tx

cat > test.csv << EOF
nombre,edad
Rafael,20
Juan,25
Maria,22
EOF

cat test.csv

awk -F',' '{print $1}' test.csv
awk -F',' '{print $2}' test.csv
head log.txt

#Look for the lines that contain that IP address.
grep "42.236.10.117" log.txt
#From those lines, print column 7.
log txt | awk '{print $7}'
#Search for a specific IP address in the log and display the resource or route requested by that IP address.
grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
head newlog.txt
sed 's/ //g' log.txt
sed '1d' log.txt
sed '$d' log.txt
sed '5,7d' log.txt
sed -n '2,15p' log.txt
sed -i '1d' log.txt
head log.txt