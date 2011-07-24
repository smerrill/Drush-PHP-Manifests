class basic {
  
 File { owner => 0, group => 0, mode => 0644 }

 file { '/etc/motd':
   content => "This is a virtual machine managed by Vagrant\n"
 }
}