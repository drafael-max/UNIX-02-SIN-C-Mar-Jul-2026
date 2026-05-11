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

#View the current user's UID and GID
id -u #User ID
id -g #Group ID principal
id -G #all groups IDs

#Create the proyecto_unix folder in your home directory.
ls -la ~/proyecto_unix/

#It displays its contents with detailed information (including hidden files)
ls -la ~/proyecto_unix/

#Create a group called developers
groupadd desarrolladores

#Create a group called operations with GID 2000
sudo groupadd -g 2000 operaciones

#Create a system group called web_services.
groupadd --system servicios_web

#Search and display in /etc/group the groups: developers, operations or web_services if they exist.
grep "desarrolladores\|operaciones\|servicios_web" /etc/group

#Displays help for the groupadd command (options and usage).
groupadd --help

#Search and display in /etc/group the lines that contain developers, operations or web_services using extended regular expressions.
grep -E "desarrolladores|operaciones|servicios_web" /etc/group

#Search and display in /etc/login.defs the configuration values ​​of the GID ranges (system group and user IDs).
grep "GID_MIN\GID_MAX\|SYS_GID" /etc/login.defs

#Create a group called design.
addgroup diseno

#Create a group called marketing with the GID 2100.
addgroup --gid 2100 marketing

#Create a system group called cache_Web.
addgroup --system cache_Web

#Search and display in /etc/group the design, marketing or cache_Web groups if they exist.
grep "diseño\|marketing\|cache_Web" /etc/group

#Add the root user to the developers group without removing it from its other groups.
usermod -aG desarrolladores root

#Add the root user to the design group without removing it from other groups.
usermod -aG diseno root

#Displays information about the root user (UID, GID, and groups to which they belong).
id root

#Search and display in /etc/group the developer and design groups if they exist.
grep "desarrolladores\|diseno" /etc/group

#Add user to group with adduser (high level, Debian)
adduser $USER root marketing 

#Displays information about the current user (UID, GID, and groups they belong to).
id $USER

#Search and display in /etc/group the lines that contain root.
grep root /etc/group