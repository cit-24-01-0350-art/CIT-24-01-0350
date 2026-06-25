#!/bin/bash
echo "Removed app."

# Containers stop සහ remove කිරීම (තිබුනොත්)
docker stop my_web_app my_database 2>/dev/null
docker rm my_web_app my_database 2>/dev/null

# Network සහ Volume එක remove කිරීම
docker network rm app_network 2>/dev/null
docker volume rm db_data 2>/dev/null

echo "All resources removed successfully."