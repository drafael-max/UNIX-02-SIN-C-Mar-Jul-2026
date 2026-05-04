#Linux course

#Section 2
#The command executed is ls.
#Lists the files and folders in the current directory.
#Note: Linux is case-sensitive, use lowercase 'ls'.
ls

#Instead of listing everything, it only shows you what's inside the "Documents" folder.
ls Documents

#Command to manage programs, but with the argument moo activates a hidden message (Easter Egg).
aptitude moo

#It displays files with detailed information.
ls -l

#Displays the files in reverse order.
ls -r

#It displays the files with detailed information and in reverse order.
ls -lr

#Verbose options with aptitude: Changes the Easter Egg response
#More 'v's increase the level of detail (verbosity)
aptitude -v moo
aptitude -vv moo
aptitude -vvv moo

#Section 3
#Displays the path to the current directory.
pwd

#It represents the root of the system.
/

#It is a shortcut that represents the "Home" or personal folder.
~

#Section 4
# "cd" stands for change directory. It is used to navigate the system.
cd Documents

# Using absolute paths (starting from root '/')
cd /home/sysadmin

# Using relative paths (starting from current location)
cd School/Art

# Shortcuts for navigation:
# Go up one level (parent directory)
cd ..

# Return to the user's home directory
cd ~

# Confirm movement with 'pwd'
pwd