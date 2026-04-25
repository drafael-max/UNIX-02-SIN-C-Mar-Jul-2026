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
# Rename the 'notas' directory to 'apuntes' to fix the incorrect naming.
mv notas apuntes

# Create the missing 'respaldos' directory as required by the evaluation.
mkdir respaldos

