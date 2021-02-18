# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    # config.vm.provision "shell", inline: "echo Hello"
  
    config.vm.define "vagrant-client" do |centos|
      centos.vm.provision "shell", inline: "echo starting CentOS7"
      centos.vm.box = "centos/7"
      centos.vm.hostname = "vagrant-client"
      centos.vm.network "public_network", ip: "192.168.31.185"
  
      centos.vm.provider "virtualbox" do |vb|
        vb.name = "vagrant-client"
        vb.memory = "1024"
      end
    end
  
    config.vm.define "vagrant-server" do |ubuntu|
      ubuntu.vm.provision "shell", inline: "echo starting Ubuntu 18.04"
      ubuntu.vm.box = "ubuntu/trusty64"
      ubuntu.vm.hostname = "vagrant-server"
      ubuntu.vm.network "public_network", ip: "192.168.31.186"
  
      ubuntu.vm.provider "virtualbox" do |vb|
        vb.name = "vagrant-server"
        vb.memory = "1024"
      end
    end
  end
  