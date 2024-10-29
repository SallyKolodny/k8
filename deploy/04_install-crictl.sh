#!/bin/bash
#
#
VERSION="v1.30.0"
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/$VERSION/crictl-$VERSION-linux-amd64.tar.gz
sudo mkdir -p /opt/prod/crictl/bin
sudo tar zxvf crictl-$VERSION-linux-amd64.tar.gz -C /opt/prod/crictl/bin
rm -f crictl-$VERSION-linux-amd64.tar.gz

