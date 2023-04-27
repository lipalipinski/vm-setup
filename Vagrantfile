Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.name = "nexus-vm"
    v.cpus = 2
    v.memory = 2048
  end

  config.vm.provision "tools", type: "ansible" do |ansible|
    ansible.playbook = "ansible/tools.yml"
  end

  config.vm.define "ubuntu-vm1" do |ubuntu-vm1|
    docker.vm.hostname = "docker-vm"
    docker.vm.network "private_network", ip: "192.168.56.3"
  end

  config.vm.define "ubuntu-vm2" do |ubuntu-vm2|
    jenkins.vm.hostname = "jenkins-vm"
    jenkins.vm.network "private_network", ip: "192.168.56.4"
  end

  config.vm.define "ubuntu-vm3" do |ubuntu-vm3|
    nexus.vm.hostname = "nexus-vm"
    nexus.vm.network "private_network", ip: "192.168.56.5"
  end
  
end
