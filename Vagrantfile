Vagrant.configure(2) do |config|
  config.vm.box = "artifacts/vagrant/windows-2016-vbox.box"

  config.vm.synced_folder ".", "C:\\vagrant",
    type: "rsync",
    rsync__auto: true,
    rsync__verbose: true,
    rsync__exclude: [ ".git/", "artifacts/", "iso/", "packer_cache", ".DS_Store" ]

  config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true
  config.vm.provider :virtualbox do |vm|
    vm.gui = true
  end
end
