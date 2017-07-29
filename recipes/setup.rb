#
# Cookbook:: ropenotp
# Recipe:: setup
#
# Copyright:: 2017, The Authors, All Rights Reserved.
pkgs = node['webadm']['packages']

pkgs.each do |pkg|
  package pkg
end
