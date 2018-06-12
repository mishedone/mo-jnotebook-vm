#!/usr/bin/env bash

# add anaconda to path
export PATH="/home/vagrant/anaconda/bin:$PATH"

# remove supervisor logs from previous sessions
rm /home/vagrant/logs/*

# reload supervisor daemons
cp -a /vagrant/build/supervisor/. /etc/supervisor/conf.d/
service supervisor restart
