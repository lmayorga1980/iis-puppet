
class application {

    $sitelist = split($sites, ',')

    include test::dirs, test::pools, test::sites ,test::apps, test::vdirs
    Class['test::dirs'] -> Class['test::pools'] -> Class['test::sites'] -> Class['test::apps'] -> Class['test::vdirs'] 
}

