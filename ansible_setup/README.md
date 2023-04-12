## First Method
sshpass -p "Achme_123" ssh achme@192.168.122.112 "show ip interface brief"

## Second Method
sshpass -p "Achme_123" ssh -o stricthostkeychecking=no achme@192.168.122.112 "show ip interface brief"

## Third Method
sshpass -p "Achme_123" ssh -t -o stricthostkeychecking=no achme@192.168.122.112 "show ip interface brief"

## Fourth Method
echo -e "show ip interface brief\nshow running-config\nshow vlan-brief" > cmd.txt

# Fifth Method
sshpass -p "Achme_123" ssh -t -o stricthostkeychecking=no achme@192.168.122.112 < cmd.txt
