# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/yakkety64"
  config.vm.hostname = 'python-dev-box'
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb|
 
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.name = "python-dev-box"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo add-apt-repository -y ppa:mystic-mirage/pycharm
    sudo apt-get update
    sudo apt-get install -y git
    sudo apt-get install -y python3-dev python3-pip 
    sudo apt-get install -y bpython3
    sudo apt-get install -y idle3
    sudo apt-get install -y pycharm
    sudo pip3 install --upgrade pip3
    sudo pip3 install --upgrade virtualenv 
    sudo pip3 install --upgrade virtualenvwrapper
    sudo pip3 install --upgrade jupyter
    sudo pip3 install --upgrade ipython
    #sudo echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> /home/vagrant/.bashrc
    #sudo echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
  SHELL

end
