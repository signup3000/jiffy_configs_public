execute "update package index" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end.run_action(:run)

include_recipe "apt::default"
include_recipe "apache2::mod_wsgi"
include_recipe "build-essential::default"
include_recipe "git::default"
include_recipe "vim::default"
include_recipe "python::default"

%w{accountsservice				
adduser					
apache2					
apache2-mpm-prefork			
apache2-utils				
apache2.2-bin				
apache2.2-common			
ipython
python					
python-apport				
python-apt				
python-apt-common			
python-cairo				
python-central				
python-chardet				
python-crypto				
python-dbus				
python-debian				
python-gamin				
python-gdbm				
python-gnupginterface			
python-gobject				
python-gobject-2			
python-gobject-cairo			
python-httplib2				
python-imaging				
python-keyring				
python-launchpadlib			
python-lazr.restfulclient		
python-lazr.uri				
python-minimal				
python-mysqldb				
python-newt				
python-oauth				
python-openssl				
python-pam				
python-pexpect				
python-pkg-resources			
python-problem-report			
python-pycurl				
python-serial				
python-setuptools			
python-simplejson			
python-smartpm				
python-support				
python-twisted-bin			
python-twisted-core			
python-wadllib				
python-xapian				
python-zope.interface			
python2.7				
python2.7-minimal			
python-dev
libmysqlclient-dev
}.each do |pkg|
  package pkg do
    action :install
    options "--no-install-recommends"
  end
end

python_pip "django" do
  version node["django"]["version"]
  action :install
end

%w{
python-memcached
django-cumulus
mezzanine
django-debug-toolbar
django-singleton
django-extensions
south
MySQL-python
}.each do |ppkg|
    python_pip ppkg do
      action :install
    end
end

