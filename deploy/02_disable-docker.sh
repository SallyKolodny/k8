#!/bin/bash
#

systemctl disable docker.service
systemctl disable docker.socket
systemctl stop docker.service
systemctl stop docker.socket
