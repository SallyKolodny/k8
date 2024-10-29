#!/bin/bash
#
rm -f /var/run/containerd/containerd.sock
kubeadm join 192.168.0.86:6443 \
	--token ydsvvh.grlpo9k102dz2qga \
	--discovery-token-ca-cert-hash \
	sha256:bbb18d0ef6a18dfb4ca269d2a412b3b5b1bb38fd88353bb12f5e32b2cd6011c8 

