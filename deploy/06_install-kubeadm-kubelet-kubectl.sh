#!/bin/bash
#
#
KUBERNETES_VERSION=1.30

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v$KUBERNETES_VERSION/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v$KUBERNETES_VERSION/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y

KUBADM_VERSION=1.30.6-1.1

sudo apt-get install -y kubelet=$KUBEADM_VERSION kubectl=$KUBEADM_VERSION KUBEADM=$KUBEADM_VERSION
sudo apt-mark hold kubelet kubeadm kubectl

