# apply me by `puppet apply --show_diff --modulepath=modules/ 05apache.pp
#
#
# used modules:
#   modules/apache   https://github.com/puppetlabs/puppetlabs-apache
#
#
# test me by:
#   curl --resolve bohuslava.com:80:127.0.0.1 http://bohuslava.com
#   or
#   curl -H 'Host: bohuslava.com' http://127.0.0.1
#

$instance_name = 'bohuslava.com'

class { 'apache':
  default_vhost => false,
}

apache::vhost { $instance_name:
  port    => '80',
  docroot => "/var/www/${instance_name}",
}

file { "/var/www/${instance_name}/index.html":
  ensure  => present,
  owner   => root,
  group   => root,
  mode    => '0644',
  content => 'Served by Apache',
  notify  => Service['httpd'],
}
