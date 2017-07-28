#
# Cookbook:: ropenotp
# Recipe:: db_config
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Create a mysql database
# Install the mysql2 Ruby gem
mysql2_chef_gem 'default' do
  package_version '5.5'
  action :install
end

mysql_connection_info = {
  host: '127.0.01',
  username: 'root',
  password: 'change me'
}

# Create the webadm database
mysql_database node['webadm']['database']['dbname'] do
  connection mysql_connection_info
  action :create
end

# Add the webadm database user
mysql_database_user node['webadm']['database']['username'] do
  connection mysql_connection_info
  password node['webadm']['database']['password']
  database_name node['webadm']['database']['dbname']
  host '127.0.0.1'
  action [:create, :grant]
end
