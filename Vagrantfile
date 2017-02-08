Vagrant.configure(2) do |config|
    config.vm.box         = 'puppetlabs/debian-8.2-32-puppet'

    config.vm.network 'forwarded_port', guest: 80,   host: 9001  # nginx
    config.vm.network 'forwarded_port', guest: 5432, host: 54324 # postgres 
    config.vm.synced_folder "./", "/var/www", group:"www-data",owner:"vagrant",mount_option:["dmode=777,fmode=664"]

    config.vm.provision 'ansible' do |ansible|
        ansible.playbook = "provision/playbook.yml"
    end

    config.vm.provider 'virtualbox' do |vb|
        vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
end
