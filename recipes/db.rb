#
# Cookbook:: ropenotp
# Recipe:: db
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Configure the MySQL client
mysql_client 'default' do
  version '5.5'
  action :create
end

# Configure the MySQL service
mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end
