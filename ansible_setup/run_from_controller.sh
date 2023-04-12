# From contoller node run the show ip interface details on the swith

ansible all -i '192.168.122.71,' -m raw -a "show ip interface brief" -u achme -k

# NOTE: Try the following with "setup" module and observe the error displayed. Discuss!

ansible all -i '192.168.122.71,' -m setup -u achme -k

# this will throw the error

sudo rm /etc/ansible/hosts

sudo vim /etc/ansible/hosts

sudo su
echo "[nxos]
192.168.122.71
[nxos:vars]
ansible_user=achme
ansible_ssh_pass=Achme_123
ansible_python_interpreter=/usr/bin/python3" > hosts
exit


