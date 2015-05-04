#!/bin/bash

set -o errexit

if [ "$(whoami)" != "root" ]; then
    echo "This script must be run as root."
    exit
fi

apt-get update
apt-get -y install python-pip python-dev
pip install -U pip ansible   # upgrade pip, install ansible
