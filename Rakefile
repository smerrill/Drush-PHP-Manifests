require 'rubygems'
require 'vagrant'

task :up do
  puts "Creating the vagrant virtual machine and configuring it from Puppet\n"
  env = Vagrant::Environment.new
  env.cli("up")
  puts "The environment has been created. SSH'ing into the machine\n"
  env.cli("ssh")
end

task :reload do
  env = Vagrant::Environment.new
  raise "Must run `rake up`" if !env.primary_vm.created?
  env.cli("reload")
  puts "The environment has been reloaded from Puppet\nSSH'ing into the reloaded environment\n"
  env.cli("ssh")
end