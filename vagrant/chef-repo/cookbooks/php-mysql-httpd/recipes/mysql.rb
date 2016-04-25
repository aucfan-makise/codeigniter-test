#
# Cookbook Name:: php-mysql-httpd
# Recipe:: mysql
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%w{mysql mysql-server}.each do |name|
  package name do
    action :install
  end
end

service "mysqld" do
  action [:start, :enable]
end
