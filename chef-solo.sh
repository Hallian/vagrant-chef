#!/usr/bin/env bash

# Install Chef if not installed yet
if [ ! -x /usr/bin/chef-solo ]; then
    # Download Chef
    curl -L https://www.opscode.com/chef/install.sh | sudo bash

    # Make config directory
    mkdir /etc/chef
fi

# Copy Chef repository and configs
rsync -avz /vagrant/chef-repo/* /var/chef
rsync -avz /vagrant/solo.rb /etc/chef/solo.rb

# Run Chef solo provisioner
chef-solo -j /vagrant/node.json
# cat /var/chef/chef-stacktrace.out