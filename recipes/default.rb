#
# Cookbook:: node_4
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#these two do the same things
apt_update 'update_sources' do
  action :update
end
#include_recipe 'apt'

package 'nginx'

service 'nginx' do
  action [:enable, :start]
end
# template 'destination' do
#   source 'name_file_in_Templates.conf.erb'
# end

template '/etc/nginx/sites-available/proxy.conf' do
  source 'proxy.conf.erb'
  variables(prox2: node['nginx']['proxy_port_mutton'],
  proxy_port: node['nginx']['proxy_port'])
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/proxy.conf' do
  to "/etc/nginx/sites-available/proxy.conf"
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/default' do
  action :delete
  # notifies :restart, 'service[nginx]'
end

package 'mongodb-org' do
  options '--allow-unauthenticated'
  action :install
end

service 'mongod' do
  action [:enable, :start]
end

# node.default['mongodb']['package_version'] = '3.4'
# include_recipe 'mongodb::default'.


#package 'nodejs'
# include_recipe "apt"
include_recipe "nodejs"
nodejs_npm "pm2"
