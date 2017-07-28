# # encoding: utf-8

# Inspec test for recipe ropenotp::db

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('mysql-server-5.5') do
  it { should be_installed }
end

describe service('mysql-default') do
  it { should be_enabled }
  it { should be_running }
end

describe mysql_conf('/etc/mysql-default/my.cnf').params('mysqld') do
  its('port') { should eq '3306' }
  its('socket') { should eq '/run/mysql-default/mysqld.sock' }
end

describe port(3306) do
  it { should be_listening }
  its('protocols') { should include('tcp') }
end

describe command("mysql -h 127.0.0.1 -uroot -pchange\\\ me -s -e 'show databases;'") do
  its('stdout') { should match (/mysql/) }
end
