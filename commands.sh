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