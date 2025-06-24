#!/usr/bin/env python3
import rospy
import os
import time

# La función para guardar el mapa cada 3 segundos
def save_map():
    # Obtener el nombre del mapa desde los parámetros
    map_name = rospy.get_param('map_name', 'default_map')
    
    while not rospy.is_shutdown():
        # Ejecuta el comando map_saver para guardar el mapa
        rospy.loginfo(f"Guardando mapa: {map_name}")
        os.system(f"rosrun map_server map_saver -f /home/brazo/workspace/rafi_ws/src/mapping/maps_hub/{map_name}")
        rospy.sleep(3)  # Espera 3 segundos antes de guardar nuevamente

def main():
    rospy.init_node('saving_map', anonymous=True)
    rospy.loginfo("Iniciando el guardado de mapa...")
    save_map()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
