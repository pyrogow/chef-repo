#
# Cookbook Name:: firewalld
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'firewalld'

service 'firewalld' do
  action [:enable, :start]
end

firewalld_rich_rule "ssh_add" do
  zone 'public'
  family 'ipv4'
  source_address '0.0.0.0/0'
  service_name 'ssh'
  log_prefix 'ssh'
  log_level 'info'
  limit_value '1/m'
  firewall_action 'accept'
  action :add
end