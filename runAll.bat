@echo off
:: Adding dynamic facter variables

set FACTER_sites=mysite1,mysite2,mysite3
set FACTER_basepath=D:\MySiteDirectory

::executing puppet with parser future
puppet apply -v --modulepath=modules --parser future manifests\site.pp
