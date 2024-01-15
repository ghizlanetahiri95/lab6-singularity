#!/bin/bash

# 1. Mostrar hostname en el sistema host y en el contenedor Singularity
echo "Hostname en el sistema host:"
hostname

echo "Hostname en el contenedor Singularity:"
singularity exec my-python.sif hostname

# 2. Mostrar /etc/os-release en el sistema host y en el contenedor Singularity
echo "Contenido de /etc/os-release en el sistema host:"
cat /etc/os-release

echo "Contenido de /etc/os-release en el contenedor Singularity:"
singularity exec my-python.sif cat /etc/os-release

# 3. Mostrar pwd en el sistema host y en el contenedor Singularity
echo "Directorio actual en el sistema host:"
pwd

echo "Directorio actual en el contenedor Singularity:"
singularity exec my-python.sif pwd

# 4. Mostrar ls -l /home en el sistema host y en el contenedor Singularity
echo "Contenido de /home en el sistema host:"
ls -l /home

echo "Contenido de /home en el contenedor Singularity:"
singularity exec my-python.sif ls -l /home

# 5. Mostrar python --version en el sistema host y en el contenedor Singularity
echo "Versión de Python en el sistema host:"
python3 --version

echo "Versión de Python en el contenedor Singularity:"
singularity exec my-python.sif python3 --version

# 6. Ejecutar pi.ipynb con un tamaño de 10^5 en el sistema host y en el contenedor Singularity
echo "Ejecutando pi.ipynb en el sistema host:"
jupyter nbconvert --execute --to notebook --inplace pi.ipynb

echo "Ejecutando pi.ipynb en el contenedor Singularity:"
singularity exec my-python.sif jupyter nbconvert --execute --to notebook --inplace /app/pi.ipynb

