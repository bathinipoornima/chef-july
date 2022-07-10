#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

#file '/var/www/html/test.html' do
 # content '<h1> hello poornima !! good morning!!!!! have a good day....</h1>
  #          <img src="myimg">'
  #action :create
#end
template '/var/www/html/index.html' do
 source 'index.html.erb'
 action :create
end

remote_file "/var/www/html/sai.png" do
  source "https://expresstricks.com/wp-content/uploads/2019/04/comments-for-beautiful-pictures.jpg"
end

remote_file "/var/www/html/hari.png" do
  source "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"
end

service 'httpd' do
  action [:enable, :start]
end








