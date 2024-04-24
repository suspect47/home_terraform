terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "k8s-master-1" {
  count     = 1
  name      = "k8s-master-1"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 2
  memory    = "2048 mib"
  
  optical_disks = [ "/home/igi/git/terraform/k8s-master-1.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}

resource "virtualbox_vm" "k8s-master-2" {
  count     = 1
  name      = "k8s-master-2"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 2
  memory    = "2048 mib"

  optical_disks = [ "/home/igi/git/terraform/k8s-master-2.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}

resource "virtualbox_vm" "k8s-master-3" {
  count     = 1
  name      = "k8s-master-3"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 2
  memory    = "2048 mib"

  optical_disks = [ "/home/igi/git/terraform/k8s-master-3.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}
resource "virtualbox_vm" "k8s-node-1" {
  count     = 1
  name      = "k8s-node-1"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 4
  memory    = "8192 mib"

  optical_disks = [ "/home/igi/git/terraform/k8s-node-1.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}

resource "virtualbox_vm" "k8s-node-2" {
  count     = 1
  name      = "k8s-node-2"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 4
  memory    = "8192 mib"

  optical_disks = [ "/home/igi/git/terraform/k8s-node-2.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}

resource "virtualbox_vm" "k8s-node-3" {
  count     = 1
  name      = "k8s-node-3"
  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64-vagrant.box"
  cpus      = 4
  memory    = "8192 mib"

  optical_disks = [ "/home/igi/git/terraform/k8s-node-3.iso" ]

  network_adapter {
    type = "bridged"
    host_interface = "wlo1"
  }
}

#resource "virtualbox_vm" "k8s-haproxy" {
#  count     = 1
#  name      = "k8s-haproxy"
#  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64.ova"
#  cpus      = 1
#  memory    = "2048 mib"

#  optical_disks = [ "/home/igi/git/terraform/k8s-haproxy.iso" ]

#  network_adapter {
#    type = "bridged"
#    host_interface = "wlo1"
#  }
#}

#resource "virtualbox_vm" "k8s-ingress" {
#  count     = 1
#  name      = "k8s-ingress"
#  image     = "/home/igi/git/terraform/jammy-server-cloudimg-amd64.ova"
#  cpus      = 1
#  memory    = "2048 mib"
#
#  optical_disks = [ "/home/igi/git/terraform/k8s-ingress.iso" ]
#
#  network_adapter {
#    type = "bridged"
#    host_interface = "wlo1"
#  }
#}








#output "IPAddr" {
#  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
#}

#output "IPAddr_2" {
#  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
#}
