#!/bin/bash
sudo -S ntpdate -u 192.168.122.1
sudo apt update
sudo apt install -y git vim

sudo wget https://sdcloud-imgs.s3.us-west-2.amazonaws.com/learnings/ansible-network-auto/upgrade/advanced-code-repo-27-06-2022/ansible-part1.zip

mkdir -p  ansible_repo_upgrade/NetworkAutomation/
unzip ansible-part1.zip -d ~/ansible_repo_upgrade/NetworkAutomation/

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

#check the installed ansible and ssh version

ansible --version
python3 --version

#Ping localhost using ansible

ansible -m ping localhost

# Output
#ansible -m ping localhost
#localhost | SUCCESS => {
#    "changed": false,
#    "ping": "pong"
#}

#  ansible comes with a default configuration file: /etc/ansible/ansible.cfg. 
# The default inventory file that consists of host groups and hosts: /etc/ansible/hosts

tree /etc/ansible/

# Inventory file

cat /etc/ansible/hosts

# Ansible Configuration File

sudo su
ansible-config init --disabled > /etc/ansible/ansible.cfg
cat /etc/ansible/ansible.cfg | grep ^.'inventory'
exit 

# Modify /etc/ansible/ansible.cfg

echo "host_key_checking = False" >> /etc/ansible/ansible.cfg





