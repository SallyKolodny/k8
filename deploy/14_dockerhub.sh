#!/bin/bash
#
kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=/home/sally/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
