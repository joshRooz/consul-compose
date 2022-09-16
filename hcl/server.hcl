advertise_addr     = "{{ GetInterfaceIP \"eth0\" }}"
advertise_addr_wan = "{{ GetInterfaceIP \"eth1\" }}"

auto_encrypt {
  allow_tls = true
}

# defaults to 0.0.0.0, which will allow RPCs requests to drive off either interface (LAN or WAN)
#bind_addr   = "{{ GetInterfaceIP \"eth0\" }}"

bootstrap_expect = 3
client_addr      = "{{ GetInterfaceIP \"eth0\" }}"

connect {
  enabled = true
}

data_dir = "/consul/data"
domain   = "consul"

# defaults to true where consul version >= 1.9.0
#enable_central_service_config = true

ports {
  https = 8501
}

primary_datacenter = "dc1"
recursors          = []
serf_lan           = "{{ GetInterfaceIP \"eth0\" }}"
serf_wan           = "{{ GetInterfaceIP \"eth1\" }}"
server             = true

ui_config {
  enabled = true
}

/*
tls {
  defaults {
    ca_file = "/consul/tls/consul-agent-ca.pem"
  }
}
*/
