Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
  end

  N=3
  (1..N).each do |id|
    config.vm.define "vm#{id}" do |machine|
      machine.vm.hostname = "vm#{id}"
      machine.vm.network "private_network", ip: "192.168.56.#{2+id}"
      machine.vm.provider "virtualbox" do |v|
        v.name = "vm#{id}"
      end
      if id == 3
        machine.vm.provision "tools", type: "ansible" do |ansible|
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
  end  
end
