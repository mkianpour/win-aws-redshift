#
#
# Cookbook Name:: win-redshift
# Attributes:: win-redshift
#

# General settings for System DSN

default['win-redshift']['name'] = "awsredshift"
default['win-redshift']['server'] = '172.28.128.11'
default['win-redshift']['port'] = '5439'  # Must be a string
default['win-redshift']['database'] = 'dev'
default['win-redshift']['uid'] = "masteruser"
default['win-redshift']['pwd'] = "changeme"
default['win-redshift']['sslmode'] = "prefer"
