#include_recipe 'selinux_policy::install'

# selinux_policy_boolean 'httpd_can_network_connect' do
#     value true
#     # Make sure nginx is started if this value was modified
#     notifies :restart,'service[nginx]', :immediate
# end

selinux_policy 'httpd_can_network_connect' do
    value true
    # Make sure nginx is started if this value was modified
    # notifies :restart,'service[nginx]', :immediate
end