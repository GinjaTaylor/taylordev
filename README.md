taylordev
=========

###Prerequisites
- [Vagrant](https://www.vagrantup.com/downloads.html) - Allows automating the VM Build
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads) - Desktop Virtualization

###Notes
Putting your Chef validation and client private keys as well as
your knife.rb file will map them to `/home/vagrant/.chef` on
the virtual machine.

The local cookbooks directory maps to `/home/vagrant/cookbooks`
