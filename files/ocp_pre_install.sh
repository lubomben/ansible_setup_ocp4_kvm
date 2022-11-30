#!/bin/bash

cd ocp4
openshift-install create manifests
sed -i 's/true/false/' manifests/cluster-scheduler-02-config.ymlù
openshift-install create ignition-configs

sudo mkdir -p /var/www/html/ignition
sudo cp -v *.ign /var/www/html/ignition
sudo chmod 644 /var/www/html/ignition/*.ign
sudo restorecon -RFv /var/www/html/

echo "Now you can create OCP nodes on KVM host"

