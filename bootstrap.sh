#!/bin/sh

echo "installing ansible"

apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y

cd /vagrant/provisioning
ansible-playbook -i "localhost," -c local playbook.yml
