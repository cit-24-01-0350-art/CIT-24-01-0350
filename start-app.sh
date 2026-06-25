#!/bin/bash
echo "Running app ..."

# 1. Database container එක start කිරීම
docker run -d \
  --name my_database \
  --network app_network \
  -v db_data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=my_secret_password \
  --restart unless-stopped \
  mysql:8.0

# 2. Web Server (Nginx) container එක start කිරීම (Port 5000 එකෙන් access කරන්න පුළුවන්)
docker run -d \
  --name my_web_app \
  --network app_network \
  -p 5000:80 \
  --restart unless-stopped \
  nginx:latest

echo "The app is available at http://localhost:5000"