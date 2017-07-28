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

describe port(3306) do
  it { should be_listening }
end
