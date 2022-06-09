#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python3 python-dev python3-pip ffmpeg supervisor nginx 
pip install --user --upgrade virtualenv
sudo rm -rf /home/ubuntu/gangup
