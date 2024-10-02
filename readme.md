
# Proyecto SageMath con Docker

Este proyecto utiliza Docker y Docker Compose para configurar y ejecutar un entorno SageMath.

## Requisitos

- Docker
- Docker Compose

## Instrucciones

1. Clona este repositorio en tu máquina local.
2. Asegúrate de tener Docker y Docker Compose instalados.
3. Navega al directorio del proyecto.
4. Ejecuta el siguiente comando para iniciar el contenedor:

   ```bash
   sudo docker-compose up
   ```

## Notebooks

* Los notebooks que desees abrir deben estar en la carpeta `/home/sage_user/notebooks`.
* Esta carpeta se monta en el contenedor para que puedas acceder y trabajar con tus notebooks desde el entorno SageMath.

## Notas

* El contenedor expondrá el puerto `8888` para acceder a la interfaz de SageMath.
* Los datos persistentes se almacenarán en el directorio `./sage_data`.
* Los notebooks se montarán desde el directorio `./notebooks`.
