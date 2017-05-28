# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/zesty64"
  config.vm.hostname = 'dev-box'
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb| 
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.name = "dev-box"
  end

  #setting up Ruby and Rails
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true

  #setting up python
  config.vm.provision :shell, path: 'bootstrap-python.sh', keep_color: true

end
