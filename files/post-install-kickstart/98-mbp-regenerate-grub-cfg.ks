%post

grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-editenv - set "$(grub2-editenv - list | grep kernelopts) efi=noruntime pcie_ports=compat modprobe.blacklist=thunderbolt"

%end
