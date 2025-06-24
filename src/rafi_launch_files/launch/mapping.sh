#!/bin/bash

# Pedir el nombre del mapa
echo "Introduce el nombre del mapa:"
read map_name

# Verificar que el nombre no esté vacío
if [ -z "$map_name" ]; then
    echo "El nombre del mapa no puede estar vacío. Abortando..."
    exit 1
fi

# Establecer el nombre del mapa como un parámetro de ROS
rosparam set map_name $map_name

# Lanzar el archivo rafi_mapping.launch que ya incluirá el nodo saving_map.py
roslaunch rafi_launch_files rafi_mapping.launch map_name:=$map_name
