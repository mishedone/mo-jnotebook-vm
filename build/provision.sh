#!/usr/bin/env bash

# fix locales (sometimes perl scripts are broken if we do not do this)
export LANGUAGE="en_US.UTF-8"
echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="en_US.UTF-8"' >> /etc/default/locale

# download and install anaconda
cd /tmp
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh -b -p /home/vagrant/anaconda
rm Anaconda3-5.1.0-Linux-x86_64.sh

# add turtle library rendering (no gui)
apt-get install -y xvfb
apt-get install -y ghostscript

# install and configure supervisor
apt-get install -y supervisor
if ! [ -d /home/vagrant/logs ]; then
    mkdir /home/vagrant/logs
    touch /home/vagrant/logs/tmp
fi
