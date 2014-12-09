VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/precise64"
  config.vm.hostname = "ghost"
  config.vm.network "private_network", ip: "10.0.0.6"
  config.vm.provision "shell", path: "chef-solo.sh"
end
