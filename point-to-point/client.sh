#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn

ln -sf /vagrant/settings/client.conf /etc/openvpn/client.conf

# openvpn --client --config /etc/openvpn/client.conf

yum install -y traceroute
# traceroute -p 1194 192.168.33.10
