#!/bin/bash
#
#
IPADDR="192.168.0.86"
NODENAME="$(hostname)"
POD_CIDR="10.0.0.0/16"
rm /var/run/containerd/containerd.sock
sudo kubeadm init --apiserver-advertise-address=$IPADDR  --apiserver-cert-extra-sans=$IPADDR  --pod-network-cidr=$POD_CIDR --node-name $NODENAME 
