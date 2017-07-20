#! /bin/bash

read -p "Virtual Machine Name: " NAME
read -p "Allocated RAN: " RAM
read -p "Storage Path: " PATH
read -p "Virtual CPUs: " VCPU
read -p "OS Type: " TYPE
read -p "OS Variant: " VARIANT
read -p "Image location: " LOCATION

sudo virt-install \
--name $NAME \
--ram $RAM \
--disk-path $PATH \
--vcpus $VCPU \
--os-type $TYPE \
--os-variant $VARIANT \
--graphics none \
--console pty,target_type=serial \
--location $LOCATION \
--extra-args 'console=ttyS0,115200n8 serial'
