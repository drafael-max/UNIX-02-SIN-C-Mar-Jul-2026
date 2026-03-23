#This command lists the private key

gpg --list-secret-keys --keyid-format=long

#Command to back up my private key

gpg --armor --export-secret-keys
678FEA3F7A530BBB

#Ham

678FEA3F7A530BBB

#Export my key

gpg --armor --export drafaelpatin@gmail.com > key_friend

#Import my friend 
key gpg --import llave_amigo
