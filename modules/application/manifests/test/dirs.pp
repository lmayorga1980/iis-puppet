
class application::test::dirs{

  file { ["$basepath",
          "$loggingdir",
    ensure => 'directory',
    owner  => 'DOMAIN\USERACCOUNT',
    group  => 'Administrators',
    mode   => '0775'
  }

  each($application::sitelist) |$env| {

  file {[ "$basepath\\${env}",
          "$basepath\\${env}\\Folder1",
          "$basepath\\${env}\\Folder1\\SubFolder1",
          "$basepath\\${env}\\Folder1\\SubFolder2",
    ensure => 'directory',
    owner  => 'DOMAIN\USERACCOUNT',
    group  => 'Administrators',
    mode   => '0775'
  }

  }
}
