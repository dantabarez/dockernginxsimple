# Utilizar la imagen de Nginx como base
FROM nginx

# Copiar el archivo HTML a la imagen de Docker
COPY index.html /usr/share/nginx/html

