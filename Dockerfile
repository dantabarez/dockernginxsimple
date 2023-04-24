# Utilizar la imagen base de Nginx
FROM nginx

# Copiar los archivos de la aplicación al directorio /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY img3.jpg /usr/share/nginx/html