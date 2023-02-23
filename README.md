# Página web utilizando Docker y Nginx

Este es un ejemplo de cómo crear una página web utilizando Docker y Nginx. En este ejemplo, se utilizará un archivo HTML simple para crear la página web.

## Requisitos previos

Antes de comenzar, asegúrate de tener los siguientes requisitos previos en tu sistema:

- Docker

## Pasos para crear la página web

Sigue estos pasos para crear la página web utilizando Docker y Nginx:

1. Crea un directorio para la página web.
2. Crea un archivo HTML simple con el contenido de tu página web.
3. Crea un archivo Dockerfile en el directorio de la página web.
4. Construye la imagen de Docker a partir del Dockerfile.
5. Ejecuta un contenedor de Docker a partir de la imagen construida.
6. Verifica en tu navegador que la página web esté funcionando correctamente.


## Pasos detallados

Instalar Docker en tu sistema: Antes de comenzar, debes tener Docker instalado en tu computadora. Puedes descargar Docker desde el sitio web oficial: https://www.docker.com/products/docker-desktop

Crear un directorio para la página web: Crea un directorio en tu computadora para almacenar los archivos de tu página web.

Crear un archivo HTML: Crea un archivo HTML simple con el contenido de tu página web. Por ejemplo, puedes usar el siguiente código:


<html>
  <head>
    <title>Mi página web</title>
  </head>
  <body>
    <h1>Bienvenido a mi página web</h1>
  </body>
</html>


Crear un archivo Dockerfile: Crea un archivo Dockerfile en el directorio de tu página web. Este archivo define la imagen de Docker que se usará para ejecutar tu página web. Aquí está un ejemplo de Dockerfile:
css
Copy code


# Utilizar la imagen de Nginx como base
FROM nginx

# Copiar el archivo HTML a la imagen de Docker
COPY index.html /usr/share/nginx/html
Construir la imagen de Docker: Abre una terminal en el directorio de tu página web y ejecuta el siguiente comando para construir la imagen de Docker:
Copy code
docker build -t mi-pagina-web .
Ejecutar un contenedor de Docker: Ejecuta un contenedor de Docker a partir de la imagen recién construida con el siguiente comando:
css
Copy code
docker run -d -p 80:80 mi-pagina-web
Verificar la página web: Abre un navegador web y accede a http://localhost para verificar si la página web se está ejecutando correctamente.
Con estos pasos, deberías tener una página web funcionando en Docker con Nginx. Puedes personalizar la página web agregando más archivos HTML o CSS y reconstruyendo la imagen de Docker.


# Cuando hago cambios en el html

Si realizaste un cambio en el archivo index.html, debes volver a construir la imagen de Docker para que el contenedor de Docker use la versión actualizada del archivo HTML.

Para hacer esto, sigue los siguientes pasos:

Abre una terminal en el directorio donde se encuentra el archivo Dockerfile y index.html.
Ejecuta el comando docker build -t mi-pagina-web . para reconstruir la imagen de Docker.
Espera a que la imagen se construya correctamente.
Detén y elimina el contenedor de Docker que estás ejecutando actualmente con el comando docker stop y docker rm.
Ejecuta el contenedor de Docker nuevamente con el comando docker run -d -p 80:80 mi-pagina-web.
Verifica en tu navegador que la página web esté funcionando correctamente y que los cambios que realizaste en index.html se hayan aplicado correctamente.
Recuerda que cada vez que realices un cambio en tu página web, debes reconstruir la imagen de Docker y ejecutar el contenedor nuevamente para que los cambios se apliquen en la versión en línea de tu página web.