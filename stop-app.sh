#!/bin/bash
echo "Stopping app..."

# Containers stop කිරීම
docker stop my_web_app my_database

# Containers remove කිරීම (නමුත් volume එක අයින් වෙන්නේ නැති නිසා data ඉතුරු වෙනවා)
docker rm my_web_app my_database

echo "App stopped. Persistent data preserved."