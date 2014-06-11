
class application::test::pools {

  each($application::sitelist) |$env| {

 
  iis_apppool {"${env}-ASP.NETv4.0":
    ensure                    => present,
    managedpipelinemode       => 'Integrated',
    managedruntimeversion     => 'v4.0',
    processmodel_identitytype => 'LocalSystem',
  }

  iis_apppool {"${env}-ASP.NETv4.0-services-4.0":
    ensure                    => present,
    managedpipelinemode       => 'Integrated',
    managedruntimeversion     => 'v2.0',
    processmodel_identitytype => 'NetworkService',
    autostart                 => true
  }
  }
}
