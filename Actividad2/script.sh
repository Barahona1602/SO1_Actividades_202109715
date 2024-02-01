#!/bin/bash

# Variable predefinida
GITHUB_USER="Barahona1602"

# Consultar la URL de GitHub API
API_URL="https://api.github.com/users/$GITHUB_USER"
DATA=$(curl -s "$API_URL")

# Extraer datos del JSON
USER_ID=$(echo "$DATA" | jq -r '.id')
CREATED_AT=$(echo "$DATA" | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear un directorio de fecha en /tmp
DATE_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p "$DATE_DIR"

# Crear un archivo de registro en el directorio de fecha
LOG_FILE="$DATE_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"

# Mensaje de confirmación
echo "Datos guardados en $LOG_FILE."

# Configurar cronjob para ejecutar el script cada 5 minutos
(crontab -l ; echo "*/5 * * * * /home/pbara/SO1_Actividades_02109715/Actividad2/script.sh") | crontab -

