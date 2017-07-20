#! /bin/bash
# 
# Automation script for QEMU virt-install VM creation

# Collect variables:
read -p "Virtual Machine Name: " NAME && echo "Configuring VM Name as: $NAME"
read -p "Allocated RAN: " RAM && echo "Configuring VM Memory Allocation of: $RAM"
read -p "Storage Path: " PATH && echo "Creating VM Disks at: $PATH"
read -p "Virtual CPUs: " VCPU && echo "Configuring VM CPU type as: $VCPU"
read -p "OS Type: " OS_TYPE && echo "Installing as OS Type: $OS_TYPE"
read -p "OS Variant: " OS_VARIANT && echo "Setting as OS Variant: $OS_VARIANT"
read -p "Image location: " SOURCE_MEDIA && echo "Installing from source media: $SOURCE_MEDIA"

# Execute command to create virtual machine:

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
