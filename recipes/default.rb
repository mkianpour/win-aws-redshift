#
# Cookbook Name:: win-redshift
# Recipe:: default
#
# Copyright (C) 2015 Mehdi
#
# All rights reserved - Do Not Redistribute
#

dsn = node['win-redshift']

case node['platform']
when 'windows'
  include_recipe 'windows'
  if node['kernel']['machine'] == 'x86_64'
    windows_package 'Amazon Redshift ODBC Driver' do
      source dsn['redshift64-url']
      installer_type :msi
      action :install
    end
  else
    windows_package 'Amazon Redshift ODBC Driver' do
      source dsn['redshift-url']
      installer_type :msi
      action :install
    end
  end

  require 'chef/win32/version'
  windows_version = Chef::ReservedNames::Win32::Version.new

  directory 'C:/chef' do
    action :create
  end
  cookbook_file 'C:/chef/odbc-dsn.ps1' do
    source 'odbc-dsn.ps1'
  end

  if windows_version.windows_server_2012_r2? || windows_version.windows_server_2012?
    powershell_script 'config_default_redshift_dsn' do
      dsnarr = [
        dsn['name'], dsn['server'], dsn['port'], dsn['database'],
        dsn['uid'], dsn['pwd'], dsn['sslmode']
      ]
      dsnarr.each do |x|
        dsnstr = dsnstr.to_s + ' ' + x
      end
      code 'C:/chef/odbc-dsn.ps1' + dsnstr
    end
  else
    log 'this cookbook is only for win2012 flavours' do
      level :warn
    end
  end

else
  log 'cannot be installed on platforms other than Windows' do
    level :warn
  end
end
