#!/bin/bash

set -o errexit

if [ "$(whoami)" != "root" ]; then
    echo "This script must be run as root."
    exit
fi

sudo apt-get update
sudo apt-get install python-pip python-dev
sudo pip install -U pip ansible   # upgrade pip, install ansible
