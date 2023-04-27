Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  config.vm.provision "tools", type: "ansible" do |ansible|
    ansible.playbook = "ansible/tools.yml"
  end

  config.vm.define "docker" do |docker|
    docker.vm.hostname = "docker-vm"
    docker.vm.network "private_network", ip: "192.168.56.3"
    docker.vm.provider "virtualbox" do |v|
      v.name = "docker-vm"
      v.cpus = 2
      v.memory = 2048
    end
  end

  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.hostname = "jenkins-vm"
    jenkins.vm.network "private_network", ip: "192.168.56.4"
    jenkins.vm.provider "virtualbox" do |v|
      v.name = "jenkins-vm"
      v.cpus = 2
      v.memory = 2048
    end
  end

  config.vm.define "nexus" do |nexus|
    nexus.vm.hostname = "nexus-vm"
    nexus.vm.network "private_network", ip: "192.168.56.5"
    nexus.vm.provider "virtualbox" do |v|
      v.name = "nexus-vm"
      v.cpus = 2
      v.memory = 2048
    end
  end
  
end
