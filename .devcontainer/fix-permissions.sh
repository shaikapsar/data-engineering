#!/bin/bash
sudo mkdir -p /home/jovyan/data
# Ensure /home/jovyan/data is owned by jovyan
# -R for recursive, `jovyan` is the user created in the base image
sudo chown -R jovyan /home/jovyan/data
# Ensure write permissions for the owner
sudo chmod -R u+rwx /home/jovyan/data
echo "Permissions fixed for /home/jovyan/data"

# Execute the original Jupyter startup command
exec "$@"
