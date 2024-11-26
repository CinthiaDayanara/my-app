#!/bin/bash

# Obtener el nombre del host
HOSTNAME=$(hostname -f)

# Obtener la IP pública de la instancia
IP_PUBLICA=$(curl -s http://ifconfig.me)

# Crear un mensaje dinámico para el index.html
echo "<html>" > /var/www/html/index.html
echo "<head><title>Hola Mundo</title></head>" >> /var/www/html/index.html
echo "<body>" >> /var/www/html/index.html
echo "<h1>Hola Mundo desde $HOSTNAME</h1>" >> /var/www/html/index.html
echo "<p>La IP pública de este servidor es: $IP_PUBLICA</p>" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html

echo "Despliegue completado correctamente."
