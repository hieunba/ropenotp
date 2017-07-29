# # encoding: utf-8

# Inspec test for recipe ropenotp::setup

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
pkgs = ['openid', 'openotp', 'opensso', 'pwreset', 'selfdesk', 'smshub', 'selfreg', 'spankey', 'tiqr', 'webadm', 'ldproxy', 'radiusd']

pkgs.each do |pkg|
  describe package pkg do
    it { should be_installed }
  end
end
