Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.synced_folder ".", "/vagrant"

  config.vm.hostname = "ubuntu-1"
  config.vm.network "private_network", ip: "192.168.56.3"

  config.vm.provision "tools", type: "ansible" do |ansible|
    ansible.playbook = "ansible/tools.yml"
  end
end
