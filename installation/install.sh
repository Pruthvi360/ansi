#!/bin/bash

# Update to latest release
#
echo "Update installed software to latest release"
sudo apt update

# Install missing packages
#
echo "Install needed packages"
sudo apt install -y python-setuptools python3-pip ack-grep jq python-is-python3 python3-pip python-yaml python3-httplib2 python3-pysnmp4 tree

# Install Python components
#
echo "Install required Python components"
sudo pip3 install jinja2 six bracket-expansion netaddr scp

#
echo "Install optional Python components"
sudo pip3 install yamllint

# Install latest stable Ansible version from Ansible repository
#
echo "Install stable Ansible"
sudo apt install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt install -y ansible
sudo pip3 install paramiko

# Install additional tools for labs
#
echo "Install additional tools"
sudo apt install -y tree
