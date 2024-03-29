#
# Cookbook Name:: xsbt
# Recipe:: default
#
# Copyright 2011, General Sensing LTD.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

unless node['platform'] == "mac_os_x"
  include_recipe "java"
end

tmp = Chef::Config[:file_cache_path]
xsbt_home = "#{node['xsbt']['home']}"
version = node['xsbt']['version']

unless File.exists?("#{xsbt_home}/lib/sbt-launch-#{version}.jar")
  remote_file "#{xsbt_home}/lib/sbt-launch-#{version}.jar" do
    source "http://typesafe.artifactoryonline.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/#{version}/sbt-launch.jar"
    mode "0644"
  end
end

template "#{xsbt_home}/bin/sbt" do
  source "sbt.erb"
  mode "0755"
end
