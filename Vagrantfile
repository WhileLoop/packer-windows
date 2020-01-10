# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "artifacts/vagrant/windows-2016-vbox.box"
  config.vm.guest = :windows

  config.vm.communicator = "winrm"
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"
  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true

  config.vm.provider :virtualbox do |vm|
    vm.gui = true
    # vm.customize ["modifyvm", :id, "--memory", ram]
    # vm.customize ["modifyvm", :id, "--cpus", cpus]
    # vm.customize ["modifyvm", :id, "--vram", "256"]
  end

end
