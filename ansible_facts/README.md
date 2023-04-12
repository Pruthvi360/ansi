## Gathering facts using device specific Module

## Ansible consists of module name nxos_facts which can be used for getting nxos device facts.
## Let's use this module to dump the facts for leaf1.

ansible nxos -m nxos_facts -c local -l 192.168.122.71

## A number of interfaces.

...
     "ansible_net_interfaces": {
            "Ethernet2/1": {
                "bandwidth": 1000000,
                "duplex": "full",
                "ipv4": {
                    "address": "172.16.11.2",
                    "masklen": 24
                },
                "macaddress": "0000.0000.002f",
                "mode": "routed",
                "mtu": "1500",
                "speed": "1000 Mb/s",
                "state": "up",
                "type": "Ethernet"
            },
            "Ethernet2/10": {
                "bandwidth": 1000000,
                "duplex": "auto",
                "macaddress": "0000.0000.002f",
                "mode": "routed",
                "mtu": "1500",
                "speed": "auto-speed",
                "state": "down",
                "type": "Ethernet"
            },
            "Ethernet2/11": {
                "bandwidth": 1000000,
                "duplex": "auto",
                "macaddress": "0000.0000.002f",
                "mode": "routed",
...


## The Cisco NXOS OS version

ansible nxos -m nxos_facts -c local -l 192.168.122.71 | grep ansible_net__os

## Output

[WARNING]: default value for `gather_subset` will be changed to `min` from `!config` v2.11 onwards
        "ansible_net__os": "7.2(0)D1(1)",
