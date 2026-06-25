# Docker Web Application Deployment

## Deployment Requirements
* Ubuntu OS
* Docker installed

## Application Description
This is a two-tier web application featuring an Nginx Web Server and a MySQL Database container communicating over a custom private network.

## Network and Volume Details
* **Network:** `app_network` (Bridge network for container communication)
* **Volume:** `db_data` (Persistent volume for MySQL database state)

## Container List
1. **my_web_app** (Nginx) - Listens on Port 5000
2. **my_database** (MySQL) - Database backend

## Instructions / Example Workflow
```bash
# 1. Create application resources
./prepare-app.sh

# 2. Run the application
./start-app.sh
# Open http://localhost:5000 in your browser

# 3. Pause the application (Preserves Data)
./stop-app.sh

# 4. Delete all application resources
./remove-app.sh
