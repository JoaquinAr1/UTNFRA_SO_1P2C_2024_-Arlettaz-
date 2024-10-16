#!/bin/bash


echo "Información de la Memoria RAM Total:" > /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_-Arlettaz-/RTA_ARCHIVOS_Examen_20241015/Filtro_Basico.txt
grep MemTotal /proc/meminfo | awk '{print $2/1024 " MB"}' >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_-Arlettaz-/RTA_ARCHIVOS_Examen_20241015/Filtro_Basico.txt

echo -e "\nFabricante del Chassis:" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_-Arlettaz-/RTA_ARCHIVOS_Examen_20241015/Filtro_Basico.txt
sudo dmidecode -s chassis-manufacturer >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_-Arlettaz-/RTA_ARCHIVOS_Examen_20241015/Filtro_Basico.txt
