# # encoding: utf-8

# Inspec test for recipe ropenotp::db

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('mysql-server') do
  it { should be_installed }
end

describe port(3306) do
  it { should be_listening }
end
