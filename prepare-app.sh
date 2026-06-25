#!/bin/bash
echo "Preparing app..."

# Docker network එකක් සෑදීම
docker network create app_network

# Database එකේ data තියාගන්න Named Volume එකක් සෑදීම
docker volume create db_data

echo "Preparation complete. Network and Volume created."