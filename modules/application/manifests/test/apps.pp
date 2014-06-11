
class application::test::apps {

  each($application::sitelist) |$env| {

  iis_app {"${env}yoursite/":
    ensure          => present,
    applicationpool => "${env}-ASP.NETv4.0",
  }

  iis_app {"${env}anothersite/":
    ensure          => present,
    applicationpool => "${env}-ASP.NETv4.0-services-4.0",
  }

  }
}
