#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn easy-rsa
yum install -y bridge-utils

# cd /usr/share/easy-rsa/2.0
# source vars
# ./clean-all
# ./build-ca
# ./build-key-server server
# ./build-key client
# ./build-dh

yum install -y traceroute
# openvpn /vagrant/settings/server.conf

echo 1 > /proc/sys/net/ipv4/ip_forward
echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
