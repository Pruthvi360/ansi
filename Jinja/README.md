## Download the Repository 

sudo wget https://sdcloud-imgs.s3.us-west-2.amazonaws.com/learnings/ansible-network-auto/upgrade/advanced-code-repo-27-06-2022/ansible-part1.zip

## make dir and unzip downloaded zip file

mkdir -p  ansible_repo_upgrade/NetworkAutomation/
unzip ansible-part1.zip -d ~/ansible_repo_upgrade/NetworkAutomation/

## How Jinja2 works

## Jinja2 can output data while using variables and conditions. Some characteristics of Jinja2 are:

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Jinja2
tree

## We will use a python script yaml2Config.py to create device configurations by running a "*.j2" file stored in ./templates and variable specified in vars

cat templates/yaml2Config.py

## To understand this better, let's go through the following example where We are trying to generate hostname and vlan of a device using 1a-varSub.j2.

cat templates/1a-varSub.j2

## The {{hostname}} and {{vlan}} jinja2 filter is used for calling values of hostname and vlan from yaml file 1a-varsSub.yml stored in the ./vars folder.

cat vars/1a-varSub.yml

## We will use a python script yaml2Config.py to create device configurations by running 1a-varsSub.j2 and variable specified in 1a-varsSub.yml
## Now, let's create configuration from 1a-varsSub.j2
## Go to the templates directory and execute the follwing commands to genarate configuartion from jinja

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Jinja2/templates
chmod +x yaml2Config.py
./yaml2Config.py 1a-varSub.j2

## 

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Jinja2/vars
cat 2a-ComplexDict.yml

## 

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Jinja2/templates
cat 2b-ComplexDictDefault.j2

## As we can observe in the above image, we are using . operator for calling values under complex directory loopback.
## For example, to get the value of IP address under loopback we are calling variable loopback.ip
## Now, let's generate the configuration from jinja2 template.

chmod +x yaml2Config.py
./yaml2Config.py 2a-ComplexDict.j2

## Generating similar Device Configuration using default value for mask

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Jinja2/
cat vars/2b-ComplexDictDefault.yml

## Now, whenever we deploy template, first it will try to fetch value of mask from its variable file.
## Since the variable value is missing in the variable file it will generate device configuration by considering the default value which is specified in the template i.e. 255.255.255.255

chmod +x yaml2Config.py
./yaml2Config.py 2b-ComplexDictDefault.j2









