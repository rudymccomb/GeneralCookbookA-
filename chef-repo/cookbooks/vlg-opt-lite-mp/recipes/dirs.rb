#
# Cookbook Name:: vlg-opt-lite-mp
# Recipe:: dirs
#
# Copyright 2014, Videology Group, Inc.
#
# All rights reserved - Do Not Redistribute
#

# clicksense local dirs
directories = [
               "#{node["vlg-clicksense"]["local_dir"]}/conf",
               "#{node["vlg-clicksense"]["local_dir"]}/cache",
               "#{node["vlg-clicksense"]["local_dir"]}/logs",
               "#{node["vlg-clicksense"]["local_dir"]}/models",
               "#{node['vlg-base']['log_dir']}/mp_cleanup_job"
              ]

directories.each do |dir_name|
  directory dir_name do
    owner "#{node['vlg-base']['app_user']}"
    group "#{node['vlg-base']['app_user']}"
    mode "0755"
  end
end
