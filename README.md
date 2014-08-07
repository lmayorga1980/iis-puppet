
###IIS Puppet Provisioning

 * This is a place holder for IIS configuration using the Puppet Forge Module https://forge.puppetlabs.com/simondean/iis

 * Set the following environment facter variables for a test environment provisioning
  - `set FACTER_sites=mysite1,mysite2,mysite3`
  - `set FACTER_basepath=D:\<YourPreferedDirectory>`
 * run `runAll.bat` to start creating sites, pools and virtual directories

