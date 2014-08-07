
class application::test::dirs{

  file { "$basepath":
    ensure => 'directory',
    group  => 'Administrators',
  }

  each($application::sitelist) |$env| {

  file {[ "$basepath\\${env}",
          "$basepath\\${env}\\Folder1",
          "$basepath\\${env}\\Folder1\\SubFolder1",
          "$basepath\\${env}\\Folder1\\SubFolder2"] :
    ensure => 'directory',
    #owner  => 'DOMAIN\USERACCOUNT',
    group  => 'Administrators',
  }

  }
}
