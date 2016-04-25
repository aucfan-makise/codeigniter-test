#
# Cookbook Name:: common
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

execute "Install epel repository" do
  command "rpm -Uvh http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm"
  not_if "rpm -qa | grep -q epel-release"
end
