#!bin/bash
echo "IP Pública:" > /home/osboxes/repogit/UTNFRASO_1P2C_2024-Arlettaz-/RTAARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
curl -s ifconfig.me >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024-Arlettaz-/RTAARCHIVOS_Examen_20241015/Filtro_Avanzado.txt

echo -e "\nObteniendo URL del repositorio remoto..." >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024-Arlettaz-/RTAARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
git remote get-url origin >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024-Arlettaz-/RTAARCHIVOS_Examen_20241015/Filtro_Avanzado.txt

echo -e "\nEl hash de mi usuario es:" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024-Arlettaz-/RTAARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
git config --global user.email | md5sum | awk '{print $1}' >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024-Arlettaz-/RTA_ARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
