# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  # salt stack masterless setup for provisioning
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion.conf"
    salt.verbose = true
    salt.run_highstate = true 
  end
  
  # For Multi-VM Environment
  #config.vm.define :nn1 do |nn1|
  #  nn1.vm.hostname = "nn1"
  #end

  #config.vm.define :snn1 do |snn1|
  #  snn1.vm.hostname = "snn1"
  #end
  
  #config.vm.define :dn1 do |dn1|
  #  dn1.vm.hostname = "dn1"
  #end

end
