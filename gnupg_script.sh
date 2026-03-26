#This command lists the private key
gpg --list-secret-keys --keyid-format=long

#Command to back up my private key
gpg --armor --export-secret-keys
678FEA3F7A530BBB

#Hash
678FEA3F7A530BBB

#Export my key
gpg --armor --export drafaelpatin@gmail.com > key_friend

#Import my friend 
key gpg --import llave_amigo

#List the keys
gpg --list-keys

#Send a message
echo "hola martin jaja" > doc_no_cifrado.txt

#See the message 
cat doc_no_cifrado.txt

#Encrypt the file using my partner's public key.
gpg --encrypt 

#decrypt the file
gpg --decrypt 

#Bloque D
# Create a cleartext signature
gpg --clearsign doc_no_cifrado.txt

# Create a signature in binary format
gpg --sign doc_no_cifrado.txt

# Create a separate signature
gpg --detach-sign doc_no_cifrado.txt