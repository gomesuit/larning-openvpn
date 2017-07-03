#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn

ln -s /vagrant/settings/server.conf /etc/openvpn/server.conf

openvpn --genkey --secret /vagrant/static.key

# openvpn --config /etc/openvpn/server.conf

yum install -y traceroute
