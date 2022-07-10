#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'tree' do 
  action :install
end

file '/myfile2' do
  content 'this is my second file' 
  action :create
  owner 'root'
  group 'root'
end

user "Hari" do
  action :create
end

group 'DEVOPS' do
  action :create
  members 'Hari'
  append true
end


user 'sai' 
group 'AWS' 
package 'wget' 

%w(httpd mysql mariadb-server unzip vim).each do |p|
  package p do
    action :install
  end
end

%w(user1 user2 user3 user4 user5).each do |p|
  user p do
    action :create
  end
end


















