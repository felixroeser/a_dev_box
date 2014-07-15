# Simple vagrant ruby, node, scala, cassandra dev box

## Installation

Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](http://www.vagrantup.com/downloads.html)
and some plugins

    $ vagrant plugin install vagrant-omnibus --plugin-version '>= 1.4.1'
    $ vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
    $ git clone git@bitbucket.org:byteforscher/local_dev_box.git devbox
    $ cd devbox
    $ DEVBOXCPUS=2 DEVBOXMEMORY=4096 vagrant up

## Credits

provisioning/roles/cassandra forked from https://github.com/Kami/ansible-cassandra
provisioning/roles/scala and sbt forked from https://github.com/snowplow/ansible-playbooks
