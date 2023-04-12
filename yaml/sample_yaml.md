---
- host: all
  tasks:
    - name: install packages
      apt:
        name: mc,curl
        state: present
        update_cache: yes
...

echo "Leaf1.yaml.com
Spine1.yaml.com" > scalar_exercise.yaml

echo "Integer:  1345
String:  welcome to network-automation workshop
URL: http://exercise.com" > list_exrcise.yaml

echo "Employee2: pruthvi
Employee2: irfan
Employee3: chaithra" > employee_list.yaml

echo "Name: eth0
IP address: 192.168.2.1
Description: sample interface
Mask: 255.0.0.0" > ip_details.yaml
