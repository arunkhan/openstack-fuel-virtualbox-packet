# OpenStack-Fuel-on-Packet


## Overview


## Bare Metal Service Account

For this workshop, you'll be using physical servers provided by Packet. Specifically, you'll be using one of their 'Type 1' servers, a 32 GB, 120GB x 2 SSD (RAID-1), 4 core Xeon server. Packet provides their servers by the hour. With code SDOPENSTACK, you'll get $25 of free credit. The 'Type 1' is $0.40/hour so the $25 credit will get you 62 hours of CPU use. Be sure to shut down the server at the end of the workshop!

Sign up at www.packet.net and use code SDOPENSTACK. You'll need to provide a credit card or PayPal account in case you go past the $25 in credit.

## Startup a Bare Metal Server

Manage->Create Project->

Just down the Bare Metal Server IP address.

## Log into the Bare Metal Server



## Download and Run Install Scripts

yum -y install git
git clone https://github.com/OpenStackSanDiego/openstack-fuel-virtualbox-packet
cd openstack-fuel-virtualbox-packet
sh setup-fuel.sh

## Startup Fuel Servers

This will launch 5 nodes

sh launch_16GB.sh

## Log into Fuel

sh enable-port-forwarding.sh 

Log into the Fuel console at:
http://147.75.108.181:8001

Login with admin/admin.

## Use Fuel to setup your first OpenStack cloud

From here you can proceed with the cloud installation instructions available at:

https://docs.openstack.org/developer/fuel-docs/userdocs/fuel-user-guide.html

Your first steps will be to assign node roles.

## Shutting it all down

From the Packet Application website, select the bare metal server and mark it for deletion.

You are welcome to keep the server running but remember that you will keep being charged until you shut it down.

