#!/bin/bash

# manually backup your etcd or kubernetes cluster using etcdctl
DATENOW=$(date +"%A, %d-%m-%Y %H:%M:%S %Z")
ETCDCTL_API=3 etcdctl --endpoints https://127.0.0.1:2379 snapshot save snapshot.db \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
--cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt \
--key /etc/kubernetes/pki/etcd/healthcheck-client.key;
echo "Backup has been done at $DATENOW"
