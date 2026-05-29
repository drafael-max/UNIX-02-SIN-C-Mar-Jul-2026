#View current main group
id
id -gn #only the main group name

#Create a file and see which group inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#The group is the user's primary group

#View the current group
id -gn
echo "Grupo actual: $(id -gn)"

#Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

#Access to the developers group was achieved by creating the group and changing the user's active group with the newgrp command.
#The necessary packages were also installed.

##Create a file within the subsell
touch ~/despues_de_newgrp.txt
ls -la ~/despues_de_newgrp.txt
#The group is now 'desarrolladores'

#Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~
#mkdir -p ~/proyecto_dev/src creates the proyecto_dev folder and the src folder inside it.
#ls -la ~ displays all files and folders in the home directory (~) with detailed information, including hidden files.