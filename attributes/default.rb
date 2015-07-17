#
#
# Cookbook Name:: win-redshift
# Attributes:: win-redshift
#

# General settings for System DSN

default['win-redshift']['dsn']['name'] = "awsredshift"
default['win-redshift']['dsn']['server'] = '172.28.128.11'
default['win-redshift']['dsn']['port'] = '5439'  # Must be a string
default['win-redshift']['dsn']['database'] = 'dev'
default['win-redshift']['dsn']['user'] = "masteruser"
default['win-redshift']['dsn']['pass'] = "changeme"
default['win-redshift']['dsn']['charset'] = 'utf8'
