maintainer       "General Sensing LTD"
maintainer_email "aaron@generalsensing.com"
license          "Apache 2.0"
description      "Installs/Configures xsbt"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.3"

%w{ubuntu debian}.each do |os|
  supports os
end

%w{java}.each do |cb|
  depends cb
end
