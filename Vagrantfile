# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  #Setup for Web Server
	config.vm.define "web" do |web|
		web.vm.hostname = "web"
		web.vm.box = "apache"
		web.vm.network "private_network", type: "dhcp"
		web.vm.network "forwarded_port", guest: 80, host: 8080
		web.vm.provision "shell", path: "provision.sh"
	end


  #Setup for MYSQL DB Server
	config.vm.define "db" do |db|
		db.vm.hostname	= "db"
		db.vm.box	= "mysql"
		db.vm.network "private_network", type: "dhcp"
	end
end
