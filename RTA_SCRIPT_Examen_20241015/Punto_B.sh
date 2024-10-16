#!/bin/bash

sudo fdisk /dev/sdb <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e



n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

sudo mkfs -t ext4 /dev/sdb1
sudo mkfs -t ext4 /dev/sdb2
sudo mkfs -t ext4 /dev/sdb3
sudo mkfs -t ext4 /dev/sdb5
sudo mkfs -t ext4 /dev/sdb6
sudo mkfs -t ext4 /dev/sdb7
sudo mkfs -t ext4 /dev/sdb8
sudo mkfs -t ext4 /dev/sdb9
sudo mkfs -t ext4 /dev/sdb10
sudo mkfs -t ext4 /dev/sdb11

sudo mount /dev/sdb1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdb2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdb3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdb5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdb6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdb7 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdb8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdb9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdb10 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdb11 /Examenes-UTN/profesores


echo "/dev/sdb1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb11 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo cat /etc/fstab
