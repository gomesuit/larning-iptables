#!/bin/bash
set -e

sudo yum install -y vim

sudo yum install -y iptables-services
sudo systemctl stop firewalld
sudo systemctl mask firewalld
sudo systemctl start iptables
sudo systemctl enable iptables
