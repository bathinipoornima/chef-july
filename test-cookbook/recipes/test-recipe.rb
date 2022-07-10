#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.
file '/yourfile' do
  content 'hello dear students!! good evening'
  action :create
end

execute "my linux command" do
   command <<-EOH
   yum install git -y
   yum install docker -y
   service docker start
   EOH
end









