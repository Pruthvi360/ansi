## Download the Repository 

sudo wget https://sdcloud-imgs.s3.us-west-2.amazonaws.com/learnings/ansible-network-auto/upgrade/advanced-code-repo-27-06-2022/ansible-part1.zip

## make dir and unzip downloaded zip file

mkdir -p  ansible_repo_upgrade/NetworkAutomation/
unzip ansible-part1.zip -d ~/ansible_repo_upgrade/NetworkAutomation/

## cd to into working dir and set $Path envirnomental variable

cd /home/ubuntu/ansible_repo_upgrade/NetworkAutomation/Yaml
source setpath.sh

## visualize

cat 7-ComplexDicts.yml

## Execute the ./yaml12Js file to covert yaml file to json 

chmod 777 7-ComplexDicts.yml
./yaml2Js 7-ComplexDicts.yml


