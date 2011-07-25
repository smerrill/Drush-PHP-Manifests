class drush {
    exec { "download_drush":
    cwd => "/bin",
    command => "/usr/bin/wget http://ftp.drupal.org/files/projects/drush-7.x-4.4.tar.gz",
    creates => "/bin/drush-7.x-4.4.tar.gz",
    require => Package["wget"],
  }
  
  exec { "unpack_drush":
    cwd => "/bin",
    command => "/bin/tar xvzf /bin/drush-7.x-4.4.tar.gz",
    creates => "/bin/drush",
    require => Exec["download_drush"],
  }
  
  exec { "remove_tar":
    cwd => "/bin",
    command => "/bin/rm /bin/drush-7.x-4.4.tar.gz",
    require => [ Exec["download_drush"], Exec["unpack_drush"] ],
  }
  
  exec { "install_drush":
    cwd => "/bin",
    command => "/bin/mv drush/ /opt/",
    creates => "/opt/drush",
    require => [ Exec["download_drush"], Exec["unpack_drush"] ],
  }
  
  file { "/usr/local/bin/drush":
    ensure => "/opt/drush/drush",
  }
}