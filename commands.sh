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

# Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to
#fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
--depth <depth>