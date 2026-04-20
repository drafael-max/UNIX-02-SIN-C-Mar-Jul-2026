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

