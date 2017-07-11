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

yum install -y traceroute

# パケット転送をオンにする
echo 1 > /proc/sys/net/ipv4/ip_forward
#echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf

# VPNクライアントのトラフィックをインターネットにNATで接続させる
# enp0s8の部分は環境により異なる
# iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s8 -j MASQUERADE

# openvpn 起動
# openvpn /vagrant/settings/server.conf
