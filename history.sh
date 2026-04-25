    1  git checkout boot
    2  git branch -D eval_p2_1_g1
    3  git fetch upstream
    4  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
    5  cd evaluation
    6  echo "# EVALUACION PARCIAL 2 - RAFAEL PATIN" > README.md
    7  git add README.md
    8  git commit -m "Identity: Add README with student name"
    9  git branch
   10  cd orion
   11  mv notas apuntes
   12  mkdir respaldos
   13  cd ..
   14  git add .
   15  git commit -m "Complete Problem 1: Fix directory structure and add documentation"
   16  git push origin eval_p2_1_g1
   17  git add evaluation/README.md prueba.sh
   18  ls
   19  git add README.md
   20  git add ../prueba.sh
   21  git commit -m "Add documentation scripts and student identification"
   22  git push origin eval_p2_1_g1
   23  cd orion
   24  mv telemetria.log apuntes/
   25  mv config.tmp config.conf
   26  cd ..
   27  git add .
   28  git commit -m "Fix problema 2: archivos movidos y renombrados"
   29  git commit -m "Fix problem 2: files moved and renamed"
   30  git add .
   31  git commit -m "Fix problem 2: files moved and renamed"
   32  git push origin eval_p2_1_g1
   33  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   34  git add prueba.sh
   35  git commit -m "Update the documentation script with issue 2"
   36  git push origin eval_p2_1_g1
   37  cd evaluation/orion/apuntes/
   38  chmod 640 telemetria.log
   39  ls -l telemetria.log
   40  cd ~/workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   41  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   42  git add .
   43  git commit -m "Complete Problem 3: Set numerical permissions to 640 for telemetria.log"
   44  git push origin eval_p2_1_g1
   45  cd ~/workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/
   46  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/
   47  chmod u-x,g+rw,o-rwx config.conf
   48  ls -l config.conf
   49  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/
   50  git add .
   51  git commit -m "Complete Problem 4: Set symbolic permissions for config.conf"
   52  git add ../../prueba.sh
   53  git commit -m "Complete Problem 4: Set symbolic permissions for config.conf"
   54  git push origin eval_p2_1_g1
   55  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   56  find evaluation -name "*.conf" | wc -l
   57  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   58  git add .
   59  git commit -m "Complete Problem 5: Count .conf files using find and wc"
   60  git push origin eval_p2_1_g1
   61  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/apuntes/
   62  grep -ic "error" telemetria.log
   63  ls -F
   64  ls -F ..
   65  ls ..
   66  ls -l telemetria.log
   67  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/
   68  chmod u+x script.sh
   69  chmod o-w config.conf
   70  ls -l script.sh config.conf
   71  chmod g-w,o-w config.conf
   72  ls -l config.conf
   73  chmod u+s script.sh
   74  ls -l script.sh
   75  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   76  git add .
   77  git commit -m "Update problem 4 and complete problem 5: Correct permissions and SUID"
   78  git push origin eval_p2_1_g1
   79  mkdir -p /tmp/orion_zone
   80  chmod +t /tmp/orion_zone}
   81  chmod +t /tmp/orion_zone
   82  ls -ld /tmp/orion_zone
   83  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   84  git add .
   85  git commit -m "Fix problema 6: sticky bit en /tmp/orion_zone"
   86  git push origin eval_p2_1_g1
   87  cat <<EOF > key_config
%no-protection
Key-Type: RSA
Key-Length: 3072
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%commit
EOF

   88  gpg --batch --generate-key key_config
   89  rm key_config
   90  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/apuntes/
   91  gpg --encrypt --recipient lyra@orion.lab telemetria.log
   92  ls -F
   93  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
   94  git add .
   95  git commit -m "Fix problem 7: GPG key generated and telemetria.log encrypted"
   96  git push origin eval_p2_1_g1
   97  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/evaluation/orion/
   98  gpg --clearsign config.conf
   99  ls
  100  gpg --verify script.sh.sig script.sh
  101  gpg --yes --detach-sign script.sh
  102  gpg --verify script.sh.sig script.sh
  103  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
  104  git add .
  105  git commit -m "Fix problem 8: GPG signatures corrected and created"
  106  git push origin eval_p2_1_g1
  107  history