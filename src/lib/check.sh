#!/bin/bash

# check the requirement"
check() {
  if [[ $2 ]]; then # if the cmd has output
    log "$1 is installed"
  else # if is not
    echo "$3"
  fi
}

checkVmWare() {
  check "vmware" "$(vmrun)" "
=================================================
  $(red_bold vmware is missing)
=================================================
Since vmware is free for personal use,
you can download it from here:

For $(green_bold MacOS) (vmware Fusion)
  $(cyan_bold https://support.broadcom.com/group/ecx/productdownloads?subfamily=VMware%20Fusion)

For $(green_bold Windows/Linux) (vmware Workstation Pro)
  $(cyan_bold https://support.broadcom.com/group/ecx/productdownloads?subfamily=VMware%20Workstation%20Pro)

=================================================
"
}

checkVagrant() {
  check "vagrant" "$(vagrant)" "
=================================================
  $(red_bold vagrant is missing)
=================================================
You could install vagrant from here:
$(cyan_bold https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
=================================================
"
}

checkVmWareDesktop() {
  check "vagrant-vmware-desktop" "$(vagrant plugin list | grep vagrant-vmware-desktop)" "
=================================================
  $(red_bold vagrant is missing)
=================================================
You need to install the vmware-desktop plugin for vagrant
$(cyan_bold vagrant plugin install vagrant-vmware-desktop)
=================================================
"
}
