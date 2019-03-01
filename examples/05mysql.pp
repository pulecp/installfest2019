# apply me by `puppet apply --show_diff --modulepath=modules/ 05mysql.pp
#
# used modules:
#   modules/mysql     https://github.com/NTTCom-MS/eyp-mysql
#   modules/eyplib    https://github.com/NTTCom-MS/eyp-eyplib
#   modules/systemd   https://github.com/NTTCom-MS/eyp-systemd
#   modules/stdlib    https://github.com/puppetlabs/puppetlabs-stdlib
#   modules/concat    https://github.com/puppetlabs/puppetlabs-concat
#
#
# connect to mysql:
#
#   mysql --socket /var/mysql/<instance_name>/mysqld.sock --user=root -p
#

$instance_name = 'bohuslava'
$password      = 'changeme'
$port          = '3333'

mysql::community::instance { $instance_name:
  port              => $port,
  password          => $password,
  add_default_mycnf => true,
}

