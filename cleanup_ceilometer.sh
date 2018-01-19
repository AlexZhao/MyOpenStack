#!/bin/bash

sudo rm /var/lib/mongodb/ceilometer.*
sudo rm /var/lib/mongodb/journal -rf
sudo rm /var/lib/mongodb/mongod.lock
sudo -u mongodb mongod --repair -f /etc/mongod.conf
sudo systemctl restart mongod.service
