#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn

cp /vagrant/settings/server.conf /etc/openvpn/

openvpn --genkey --secret /vagrant/static.key
