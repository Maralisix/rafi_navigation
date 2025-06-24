#!/bin/bash

# Pedir el nombre del mapa
echo "Introduce el nombre del mapa sobre el que te quieres mover:"
read map_name

# Verificar que el nombre no esté vacío
if [ -z "$map_name" ]; then
    echo "El nombre del mapa no puede estar vacío. Abortando..."
    exit 1
fi

# Ruta completa al archivo .yaml
map_yaml="/home/brazo/workspace/rafi_ws/src/mapping/maps_hub/${map_name}.yaml"

# Verificar si el archivo .yaml existe
if [ ! -f "$map_yaml" ]; then
    echo "El archivo ${map_yaml} no existe. Abortando..."
    exit 1
fi

# Establecer el nombre del mapa como parámetro de ROS
rosparam set map_name $map_name

# Lanzar el servidor de mapas y el sistema de localización
roslaunch rafi_launch_files rafi_moving_base.launch map_name:=$map_name