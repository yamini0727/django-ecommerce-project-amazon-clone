#!/bin/bash
set -x

# Install libaries
cd /home/ubuntu/gangup
virtualenv -p python3 venv
source venv/bin/activate
#pip install -r requirements.txt
python manage.py migrate
#python manage.py collectstatic --no-input

# Set permission for all files
chown -R ubuntu:ubuntu /home/ubuntu

# Restart services
#sudo service supervisor restart
sudo service nginx restart
