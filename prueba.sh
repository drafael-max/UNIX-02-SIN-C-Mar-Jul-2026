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

#EXERCISE 4 Symbolic Permissions
#Grant execute permission to the owner (u+x) for script.sh
chmod u+x script.sh

#Remove write permission from group (g-w) and others (o-w) for config.conf
chmod g-w,o-w config.conf

#We verify with the command ls -l config.conf to show us the detailed information of the file
ls -l config.conf

#EXERCISE 5: Bit SUID (Set User ID)
#The SUID bit allows the file to be executed with the permissions of the file owner.
#We apply it using 'u+s' to script.sh.
chmod u+s script.sh

#EXERCISE 6: Sticky Bit activation
#Applying the sticky bit to /tmp/orion_zone ensures that only the file owner 
#can delete their own files within this shared directory.
chmod +t /tmp/orion_zone

#Create the directory (the verifier will look there)
mkdir -p /tmp/orion_zone

#Activate the Sticky Bit using '+t'
chmod +t /tmp/orion_zone

#Verify that a 't' appears at the end of the permissions
ls -ld /tmp/orion_zone

#EXERCISE 7 GPG Key Generation and Asymmetric Encryption
#Uses the public key of lyra@orion.lab to asymmetrically encrypt the log file.
gpg --encrypt --recipient lyra@orion.lab telemetria.log

#Lists and classifies files in the current directory to verify the creation of the .gpg file.
ls -F