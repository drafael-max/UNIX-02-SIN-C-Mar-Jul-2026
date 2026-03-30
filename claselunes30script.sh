#The package list is updated
sudo apt update

#Update installed programs
sudo apt upgrade

#The part is installed
sudo apt install parted 

#Install the NumPy library in Python
pip install numpy

#Displays disk and partition information:
sudo parted -l && echo -e "\ n---\n" && lsblk -f && echo -e "\n---\n"

#It's the partition table
sudo parted -l

#It displays the disks, partitions, and their file systems
lsblk -f 

#Check the system boot type:
#If the /sys/firmware/efi directory exists: displays "UEFI"
#If it does not exist: displays "BIOS"
[ -d /sys/firmware/efi] && echo "UEFI" || echo "BIOS"

echo "mi archivo" > test.txt
stat test.txt