#
# Cookbook:: ropenotp
# Recipe:: ppa
#
# Copyright:: 2017, The Authors, All Rights Reserved.
apt_repository 'rcdevs_debian' do
  uri 'http://rcdevs.com/repos/debian'
  key 'http://rcdevs.com/repos/debian/RPM-GPG-KEY-rcdevs.pub'
  distribution './'
end
