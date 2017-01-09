Vagrant.configure(2) do |config|
  config.vm.define "mysqltest" do |mysqltest|
    mysqltest.vm.box = "ubuntu/trusty64"
    mysqltest.vm.hostname = "vagrant-mysqltest"
    mysqltest.vm.network "private_network", ip: "10.0.0.20"
    mysqltest.vm.provider :virtualbox do |vm|
      vm.memory = 1024
      vm.cpus = 2
    end
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "vagrant-site.yml"
    ansible.verbose = "v"
    ansible.groups = {
      "vagrant-mysqltest" => ["mysqltest"]
    }
  end

end
