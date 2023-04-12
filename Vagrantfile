Vagrant.configure("2") do |config|

  # config.vm.communicator = "winrm"
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
    vb.gui = false
  end


  config.vm.box = "peru/windows-10-enterprise-x64-eval"
  # config.vm.network "private_network", ip: "192.168.56.10"
  # config.vm.network "forwarded_port", guest: 445, host: 445

  # config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
  config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

  # config.vm.provision "shell", inline: "Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False"
  #config.vm.network "forwarded_port", guest: 139, host: 139
  #config.vm.network "forwarded_port", guest: 137, host: 137
  #config.vm.network "forwarded_port", guest: 135, host: 135
  #config.vm.boot_timeout = 600
  #config.vm.base_address = "192.168.121.10"
  #config.winrm.host = "192.168.121.10"
  #config.winrm.timeout = 3600

end
