

### Puppet Provisioning (IIS Configuration)

 * This is a place holder for IIS configuration using the Puppet Forge Module https://forge.puppetlabs.com/simondean/iis

 * Set the following environment facter variables for a test environment provisioning
  - `set FACTER_sites=test1,test2,test3,test4,test5 ...`
  - `set FACTER_environment=test`
  - `set FACTER_basepath=D:\<your base directory>` 
  - `set FACTER_loggingdir=D:\<your logging directory>`
 * run `provisioning.bat` to start creating sites, pools and virtual directories


