os=win11
backing_prefix=bac
backing_format=qcow2
snap_format=qcow2

qemu-img create -F $backing_format -b $backing_prefix.$os.qcow2 -f $snap_format $os.qcow2

# Permissions:
sudo chown libvirt-qemu:kvm $os.qcow2
sudo chmod 600 $os.qcow2


# First 'F' for source format has to be capitalized
# https://github.com/GNS3/gns3-server/issues/1964
