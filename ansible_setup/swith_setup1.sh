# configure hostname

configure terminal
hostname leaf1
exit

# add another username and password to the switch

configure terminal
username achme password Achme_123 role network-admin
exit

# To get interface IP details

show ip interface brief

# check management interface

show ip interface mgmt 0

# go back to ansible controller and ssh into the switch

ssh achme@192.168.122.71

exit

