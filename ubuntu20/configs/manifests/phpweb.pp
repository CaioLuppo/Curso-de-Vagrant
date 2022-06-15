exec { 'apt-update':
  command => '/usr/bin/apt-get update',
}

package { ['php', 'php-mysql']:
  require => Exec['apt-update'],
  ensure => installed,
}

exec { 'run-php':
  require => Package['php'],
  command => '/usr/bin/php -S localhost:80 &',
}
