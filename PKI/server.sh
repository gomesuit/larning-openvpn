#!/bin/bash
set -xe

sudo yum install -y vim

yum install -y epel-release
yum install -y openvpn easy-rsa

# cd /usr/share/easy-rsa/2.0
# source vars
# ./clean-all
# ./build-ca
# ./build-key-server server
# ./build-key client
# ./build-dh
