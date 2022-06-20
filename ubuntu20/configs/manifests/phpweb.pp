exec { 'apt-update':
  command => '/usr/bin/apt-get update',
}

package { ['php', 'php-mysql']:
  require => Exec['apt-update'],
  ensure => installed,
}

exec { 'run-php':
  require => Package['php'],
  command => '/usr/bin/php -S 0.0.0.0:8888 -t /vagrant/src &',
}
