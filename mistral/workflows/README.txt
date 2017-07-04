# OpenStack API

## Neutron

### Create Network

POST v2.0/networks.json
Content-Type: application/json
Accept: application/json

{
 "network":
  {
    "name": "sample_network",
    "admin_state_up": false
  }
}

### Create Subnet

POST /v2.0/subnets
Content-Type: application/json
Accept: application/json

{
  "subnet": {
    "network_id": "ed2e3c10-2e43-4297-9006-2863a2d1abbc",
    "ip_version": 4,
    "cidr": "10.0.3.0/24",
    "allocation_pools": [{"start": "10.0.3.20", "end": "10.0.3.150"}]
  }
}

### Create Port

POST /v2.0/ports.json HTTP/1.1
Content-Length: 158
content-type: application/json
accept: application/json

{
    "port": {
        "admin_state_up": true,
        "device_id": "d6b4d3a5-c700-476f-b609-1493dd9dadc0",
        "name": "port1",
        "network_id": "6aeaf34a-c482-4bd3-9dc3-7faf36412f12"
    }
}

example 2

{
    'port': {
    	'admin_state_up': True,
    	'device_id': router_id,
    	'name': 'port1',
    	'network_id': network_id,
     }
}

### Create Router

{
	'router': {
		'name': 'router name',
                'admin_state_up': True
        }
}

