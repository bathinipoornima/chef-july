#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file '/config file' do
  content "my node details are
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory'] ['total']}"
  owner 'root'
  group 'root'
  action :create
end


remote_file '/tmp/apache-maven-3.8.6-bin.tar.gz' do
  source 'https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz'
end

archive_file 'Extracting maven file' do
  path '/tmp/apache-maven-3.8.6-bin.tar.gz'
  destination '/root/devtools'
end








