
class application::test::vdirs{

  each($application::sitelist) |$env| {

  iis_vdir {"${env}yoursite/":
    ensure       => present,
    iis_app      => "${env}yoursite/",
    physicalpath => "$basepath\\${env}"
  }

  iis_vdir {"${env}anothersite/":
    ensure          => present,
    iis_app         => "${env}anothersite/",
    physicalpath    => "$basepath\\${env}\\Folder1\\SubFolder1",
  }

  iis_vdir {"${env}anothersite/myvirtualdir":
    ensure          => present,
    iis_app         => "${env}anothersite/",
    physicalpath    => "C:\\Program Files\\Internet Explorer",
  }
  }
}
