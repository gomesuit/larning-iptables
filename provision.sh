#!/bin/bash
set -e

yum install -y vim

yum install -y iptables-services
systemctl stop firewalld
systemctl mask firewalld
systemctl start iptables
systemctl enable iptables

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p
