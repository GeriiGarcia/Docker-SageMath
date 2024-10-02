#!/bin/bash

# Verifica que se pase un archivo como argumento
if [ -z "$1" ]; then
  echo "Error: Debes especificar un archivo de notebook."
  echo "Uso: ./start_notebook.sh <nombre_del_notebook.ipynb>"
  exit 1
fi

# Obtiene el archivo pasado como argumento
NOTEBOOK_FILE=$1

# Verifica si el archivo existe
if [ ! -f "$NOTEBOOK_FILE" ]; then
  echo "Error: El archivo $NOTEBOOK_FILE no existe."
  exit 1
fi

# Crea un archivo .env temporal para establecer la variable de entorno
echo "NOTEBOOK_FILE=$(basename $NOTEBOOK_FILE)" > .env

# Ejecuta docker-compose up con la variable de entorno configurada
sudo docker compose up

