# apply me by `puppet apply 02file.pp`
#

file { '/home/CHANGE_ME/file_created_by_puppet':
  ensure  => present,
  mode    => '0644',
  owner   => 'CHANGE_ME',
  group   => 'CHANGE_ME',
  content => 'installfest.cz - this file was created by puppet',
}

