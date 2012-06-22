case node["platform"]
when "centos", "redhat", "fedora", "suse"
  default['www']['user']             = "apache"
  default['www']['group']            = "apache"
  default['supervisor']['service']   = "supervisord"
  default['supervisor']['config']    = "/etc/supervisord.conf"
else
  default['www']['user']             = "www-data"
  default['www']['group']            = "www-data"
  default['supervisor']['service']   = "supervisor"
  default['supervisor']['config']    = "/etc/supervisor/conf.d/sentry.conf"
end

default['sentry']['superuser'] = "root"
default['sentry']['password']  = "password"
default['sentry']['dir']  = "/var/www/sentry"
default['sentry']['host'] = '0.0.0.0'
default['sentry']['port'] = 9000
# sentry mysql stuff
# this might be a duplicate if mysql bit is installed
default['mysql']['sentry_user']               = 'sentry_user'
default['mysql']['sentry_passw']              = 'password3'
default['mysql']['sentry_db']                 = 'sentry'
