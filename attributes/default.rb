#
#
# Cookbook Name:: win-redshift
# Attributes:: win-redshift
#

# General settings for System DSN

default['win-redshift']['name'] = "awsredshift"
default['win-redshift']['server'] = "MyServer"
default['win-redshift']['port'] = "5439"  # Must be a string
default['win-redshift']['database'] = "dev"
default['win-redshift']['uid'] = "masteruser"
default['win-redshift']['pwd'] = "changeme"
default['win-redshift']['sslmode'] = "prefer"
default['win-redshift']['redshift-url'] = 'https://s3.amazonaws.com/redshift-downloads/drivers/AmazonRedshiftODBC32-1.2.1.1001.msi'
default['win-redshift']['redshift64-url'] = 'https://s3.amazonaws.com/redshift-downloads/drivers/AmazonRedshiftODBC64-1.2.1.1001.msi'
