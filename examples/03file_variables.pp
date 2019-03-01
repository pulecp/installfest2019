# apply me by `puppet apply 03file_variables.pp`
#

$user  = $facts['identity']['user']
$group = $facts['identity']['group']

file { "/home/${user}/file_created_by_puppet":
  ensure  => present,
  mode    => '0644',
  owner   => $user,
  group   => $group,
  content => "installfest.cz - this file was created by puppet under user ${user}\n",
}

