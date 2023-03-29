# Utilizar la imagen base de Apache
FROM httpd:latest

# Copiar los archivos de la aplicación al directorio /usr/local/apache2/htdocs/
COPY index.html /usr/local/apache2/htdocs/
COPY style.css /usr/local/apache2/htdocs/
COPY img3.jpg /usr/local/apache2/htdocs/

