# DESCRIPTION:

Installs the sbt (simple-build-tool).

[![Build Status](https://secure.travis-ci.org/gensen/chef-xsbt.png?branch=master)](http://travis-ci.org/gensen/chef-xsbt)


# REQUIREMENTS:

Platform:

Tested on Ubuntu 10.04.

Opscode cookbooks:

* java

# ATTRIBUTES:

* `xsbt[:home]` - directory to deploy to (/opt by default)
* `xsbt[:version]` - version of SBT to install (0.11.3 by default)

# USAGE:

Simply add `recipe[xsbt]` to a run list.

# LICENSE AND AUTHOR:

Author:: Aaron Valade (<aaron@generalsensing.com>)

Copyright:: 2011, General Sensing LTD

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
