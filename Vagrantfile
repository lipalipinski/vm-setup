Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
  end

  N=3
  (0..N-1).each do |id|
    config.vm.define "vm#{id}" do |machine|

      # vm-specyfic
      case id
      when 0
        sufix="-docker"
        machine.vm.network "forwarded_port", guest: 8080, host: 8090
      when 1
        sufix="-jenkins"
        machine.vm.network "forwarded_port", guest: 8080, host: 8091
      when 2
        sufix="-nexus"
        machine.vm.network "forwarded_port", guest: 8081, host: 8092
      end

      # names
      machine.vm.hostname = "vm#{id}#{sufix}"
      machine.vm.provider "virtualbox" do |v|
        v.name = "vm#{id}#{sufix}"
      end

      # network
      machine.vm.network "private_network", ip: "192.168.56.#{3+id}"

      # provision
      if id == N-1
        machine.vm.provision "tools", type: "ansible" do |ansible|
          ansible.playbook = "ansible/tools.yml"
          ansible.limit = "all"
          ansible.groups = {
            "docker" => ["vm0"], 
            "jenkins" => ["vm1"],
            "nexus" => ["vm2"]
          }
         end
       end

    end
  end  

end
