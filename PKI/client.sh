#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn

# openvpn --client --config /etc/openvpn/client.conf

# yum install -y traceroute
# traceroute -U -p 1194 192.168.33.10

yum install -y traceroute
# openvpn /vagrant/settings/client.conf
