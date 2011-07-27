class php {
  package { [ "php5", "php5-mysql", "php5-gd", "php5-mbstring", "php5-cli", "php-pear", "php5-dev" ]:
    ensure => installed,
  }
  
  exec { "console_table":
    unless => "/usr/bin/pear list | /bin/grep Console_Table",
    command => "/usr/bin/pear install Console_Table",
    require => Package["php-pear"],
  }
}