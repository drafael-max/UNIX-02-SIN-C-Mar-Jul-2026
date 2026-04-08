#Relative route
cd calculadora

#Absolute route
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadoraa

#l=list a=all i=inode 
ls lai

#They are the same options but separate
ls -l -a -i

#It displays detailed information about the current directory, showing the size, blocks, inodes, permissions, etc
stat .
#File: .
#Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1573111     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-04-08 21:27:50.211077488 +0000
#Modify: 2026-04-08 21:27:48.987077431 +0000
#Change: 2026-04-08 21:27:48.987077431 +0000
#Birth: 2026-04-08 21:27:48.987077431 +0000

#Change directory to home directory from any locatioin of my operative 
cd 

#Change directory to home directory using absolute route 
cd /home/codespace

#Change directory to home directory using ~ shortcut
cd ~

#Change directory to home directory using enviroment variable
cd $HOME 
