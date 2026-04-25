#Download the changes from the remote upstream repository without merging them.
git fetch upstream

#Create and switch to a new branch eval_p2_1_g1 based on upstream/eval_p2_1_g1.
git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1

#Change to the evaluation directory.
cd evaluation

#EXERCISE 1 Directory Structure Correction
#Change to the orion directory.
cd orion

#!/bin/bash
#Rename the 'notas' directory to 'apuntes' to fix the incorrect naming.
mv notas apuntes

#Create the missing 'respaldos' directory as required by the evaluation.
mkdir respaldos

#EXERCISE 2 Relocate and rename files
#Change to the orion directory
cd orion

#Move 'telemetria.log' to the 'apuntes' directory.
mv telemetria.log apuntes/

#Rename 'config.tmp' to 'config.conf' to fix the file extension.
mv config.tmp config.conf

#Level up to be in the evaluation folder
cd ..

#EXERCISE 3 Numerical permissions with chmod
#Change to the directory evaluation/orion/notes/.
cd evaluation/orion/apuntes/

#Set permissions to 640 for 'telemetria.log' (owner: rw, group: r, others: none).
chmod 640 telemetria.log

#We verified with the ls -l telemetria-log command
ls -l telemetria.log

#EXERCISE 4 Symbolic permissions
#Owner: remove execute; Group: add read/write; Others: remove all.
chmod u-x,g+rw,o-rwx config.conf

#We verify with the command ls -l config.conf to show us the detailed information of the file
ls -l config.conf
