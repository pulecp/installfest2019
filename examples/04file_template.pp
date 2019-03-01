# apply me by `puppet apply --show_diff 04file_template.pp`
#

$user  = $facts['identity']['user']
$group = $facts['identity']['group']

file { "/home/${user}/file_created_by_puppet":
  ensure  => present,
  mode    => '0644',
  owner   => $user,
  group   => $group,
  content => template("/home/${user}/installfest2019/examples/templates/text.erb"),
}

