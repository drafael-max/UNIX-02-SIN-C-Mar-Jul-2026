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
