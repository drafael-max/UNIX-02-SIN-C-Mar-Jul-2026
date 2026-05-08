#Displays information about the current user: User ID, group, and groups to which they belong.
id

#Displays the groups to which the current user belongs.
groups

#Displays the contents of the /etc/passwd file (system user list).
cat /etc/passwd

#Displays the first 10 lines of the /etc/passwd file.
cat /etc/passwd | head -10

#They inherit the UID and the GEID
touch test.txt
ls -la

#View all system groups and to which groups does the current user belong
cat /etc/group | head -10
groups $USER
