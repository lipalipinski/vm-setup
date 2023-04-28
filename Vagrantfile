Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
  end


  config.vm.define "vm1" do |vm1|
    vm1.vm.hostname = "vm1-docker"
    vm1.vm.network "private_network", ip: "192.168.56.3"
    vm1.vm.provider "virtualbox" do |v|
      v.name = "vm1-docker"
    end
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.hostname = "vm2-jenkins"
    vm2.vm.network "private_network", ip: "192.168.56.4"
    vm2.vm.provider "virtualbox" do |v|
      v.name = "vm2-jenkins"
    end
  end

  config.vm.define "vm3" do |vm3|
    vm3.vm.hostname = "vm3-nexus"
    vm3.vm.network "private_network", ip: "192.168.56.5"
    vm3.vm.provider "virtualbox" do |v|
      v.name = "vm3-nexus"
    end
    vm3.vm.provision "tools", type: "ansible" do |ansible|
      ansible.playbook = "ansible/tools.yml"
      ansible.limit = "all"
      ansible.groups = {
        "docker" => ["vm1"], 
        "jenkins" => ["vm2"],
        "nexus" => ["vm3"]
      }
    end
  end
  
end
