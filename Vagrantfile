Vagrant::Config.run do |config|
  
  config.vm.box = "base"
  config.vm.network "33.33.33.10"
  
  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "base.pp"
   end
end
