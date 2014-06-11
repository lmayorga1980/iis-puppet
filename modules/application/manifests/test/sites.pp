
class application::test::sites {

  iis_site { 'Default Web Site' :
    ensure => absent
  }

  each($application::sitelist) |$env| {

  iis_site {"${env}yoursite":
    ensure   => present,
    bindings => ["http/*:80:${env}yoursite"],
  }

  iis_site {"${env}anothersite":
    ensure   => present,
    bindings => ["http/*:80:${env}anothersite"],
  }

  }
}
