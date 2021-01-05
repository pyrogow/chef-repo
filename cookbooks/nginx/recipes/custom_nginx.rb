# include_recipe "apt"

# apt_repository 'nginx' do
#   uri          'http://nginx.org/packages/ubuntu/'
#   distribution node['lsb']['codename']
#   components   ['nginx']
#   key          'http://nginx.org/keys/nginx_signing.key'
#   deb_src      true
# end

# apt_package 'nginx' do
#   action :install
# end

file "/etc/nginx/nginx.conf" do
   action :delete
end

cookbook_file "/etc/nginx/nginx.conf" do
   source "custom_nginx.conf"
   action :create
end

service "nginx" do
   action :start
end