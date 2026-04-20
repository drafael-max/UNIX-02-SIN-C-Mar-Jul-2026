#Show all files, including hidden ones.
ls -a 
ls --all 

#Displays files with details, including hidden files, in a readable format (sizes).
ls -l -ah 

#They display files with details, including hidden ones, and readable sizes.
ls -l -a -h
ls -l -ah
ls -lah

#Invalid: mkdir does not use -r.
#-f ignores errors, but -r is incorrect for mkdir.
mkdir -rf

#Create a directory literally named -rf.
mkdir -- -rf

#Lists the files and folders in the current directory.
ls 

#Quick summary, fits on one screen.
ls --help

#Displays the complete manual for the ls command.
man ls 

#You navigate with arrows, you get out with q
#/all search forward for "all"
#n go to next result
#N go to back to previous result 

#Displays the complete manual for the git clone command.
man git-clone

# Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to
#fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
--depth <depth>

#Displays files with detailed information (permissions, size, dates, etc.).
ls -l

#- = file type "-" = normal file "d" = directory, T = symbolic link
#rwx = permissions for "user" = read, write, execute
#r-x = permissions for "group" = read and execute
#r-- = permissions for "others" = read only

-rw-rw-rw-  1 codespace root      34523 Apr 17 14:16  LICENSE  

#We create a file.
touch script .sh 
touch secreto.txt
touch privado

#Everyone can run it (equivalent to a-x).
chmod +x script .sh

#Only the owner can execute it.
chmod o-r secreto.txt

#The owner reads/writes, nobody else can do anything.
chmod u+rw,go-rwx privado

#The command fails because the redirection (>) is executed by the normal user and not by sudo.
#sudo is only executed by the user whose name is next to it.
sudo echo "hola" > /etc/archivo_protegido

#echo "hola"` runs as a normal user.
#The pipe (`|`) passes the output to tee
#sudo tee: Receives the text and writes it to
#/etc/file_protected using administrator privileges.
#/dev/null: Silences the output of `tee` (which normally repeats what it writes to the screen) by sending it to the system's "black hole".
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null

#Type "hello" both in the protected file and on the screen.
echo "hola" | sudo tee /etc/archivo_protegido

#sudo: executes something as root
#sh: opens a shell
#-c: tells the shell that everything inside single quotes should be interpreted by the root shell
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'

#It is mainly used to read and display the contents of files in the terminal.
cat

#The sudo -i command opens a terminal session as superuser (root).
sudo -i

#To exit, simply type exit
exit

#Displays the absolute path to the current user's home folder.
echo "$HOME"

#Displays the literal text $HOME instead of the home path.
echo '$HOME'

#Create a file called hola.sh and write the shebang on its first line.
echo '#!/bin/sh' > hola.sh

#Add a line of code to the hola.sh file without deleting what's already there.
echo 'echo "Hola desde mi primer script"' >> hola.sh

#This set of commands is used to verify, grant permissions, and run the script you just created.
#1. ls -l hello.sh (First time)
#It shows the file details; it can be read and written but not edited.
ls -l hello.sh

#2. chmod: Changes the file's permissions.
#+x: Adds the execute permission.
chmod +x hola.sh

#3. ls -l hello.sh (The second time)
#The permissions will now look like -rwxr-xr-x (the x appears).
#In many terminals, the file name will change color (usually to green) indicating that it is executable.
ls -l hello.sh

#4. ./hola.sh
#Run the script. * The ./ tells the terminal: "look for the file in the current directory".
./hola.sh

#ls /etc is not needed. /etc is public.
ls /etc

#touch /etc/prueba.txt is needed. /etc belongs to root and doesn't allow normal users to write to it.
touch /etc/prueba.txt

#mkdir ~/my_folder is not needed. ~ is your home directory.
mkdir ~/mi_carpeta

#apt install cowsay is needed. Installing packages involves accessing system directories (/usr/bin).
apt install cowsay

#Create an empty file called test.txt. If the file already exists, simply update its modification date.
touch prueba.txt

#It establishes very restrictive permissions:
#6 (Owner): Reading and writing (4+2).
#0 (Group): No permission.
#0 (Other): No permit.
chmod 600 prueba.txt

#You will see the permissions represented as: -rw-------.
#The absence of letters in the other positions confirms that the group and others do not have access.
ls -l prueba.txt

#Change permissions to a common scheme for public programs or folders:
#7 (Owner): Read, write and execute (4+2+1). Total control.
#5 (Group): Read and execute (4+1). They can view and use it, but not delete content.
#5 (Other): Reading and execution (4+1). Same as the group.
chmod 755 prueba.txt

#Now you will see: -rwxr-xr-x. The file becomes "public" for reading and is marked as executable.
ls -l prueba.txt