# Utiliza Ubuntu 22.04 como base
FROM ubuntu:22.04

# Establecer variable de entorno para no pedir interacción durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar la lista de paquetes y actualizar el sistema
RUN apt-get update && apt-get upgrade -y

# Instalar dependencias necesarias
RUN apt-get install -y \
    gcc \
    gfortran \
    make \
    python3 \
    python3-pip \
    libmpfr-dev \
    libgmp-dev \
    eclib-tools \
    m4 \
    libgsl-dev \
    libboost-all-dev \
    zlib1g-dev \
    libreadline-dev \
    git \
    wget \
    tar

# Instalar SageMath desde los repositorios
RUN apt-get install -y sagemath

# Instalar pycryptodome dentro del entorno de SageMath utilizando sage -pip
RUN sage -pip install pycryptodome
RUN sage -pip install PrettyTable

# Exponer el puerto donde se ejecutará Jupyter
EXPOSE 8888

# Variable de entorno para definir el archivo a abrir
ENV NOTEBOOK_FILE=""

# Comando que utiliza la variable de entorno para abrir el notebook
CMD ["sh", "-c", "sage -n jupyter --ip=0.0.0.0 --no-browser --port=8888 --allow-root $NOTEBOOK_FILE"]

