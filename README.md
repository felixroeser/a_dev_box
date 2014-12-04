# Simple vagrant ruby, node, scala, cassandra dev box

Installs:

* Ruby, Go, Node, Scala, Typesafe Activator
* Grunt, Phantomjs
* Cassandra, Redis
* Docker

## Requirements

* [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://www.vagrantup.com/downloads.html) along with some plugins
  * ```vagrant plugin install vagrant-omnibus --plugin-version '>= 1.4.1'```
  * ```vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'```
* nfs-server Paket unter Linux
* ansible
  * OSX: brew install ansible
  * Ubuntu: ppa:ansible/ansible

## Installation

    $ git clone git@bitbucket.org:byteforscher/local_dev_box.git devbox
    $ cd devbox
    $ DEVBOXCPUS=2 DEVBOXMEMORY=4096 vagrant up

    # if provisioning fails: (package list might be out of date)
    # vagrant ssh
    # sudo apt-get update
    # exit
    # vagrant provision

## Docker Details - WIP

Image basis http://blog.phusion.nl/2013/11/08/docker-friendly-vagrant-boxes/
Todo install https://github.com/shipyard/shipyard

## Typesafe Activator

https://typesafe.com/activator/docs

Startup:

    cd /opt/activator
    ./activator ui
    # Open localhost:8888 in your browser

TBA

## Credits

provisioning/roles/cassandra forked from https://github.com/Kami/ansible-cassandra
provisioning/roles/scala and sbt forked from https://github.com/snowplow/ansible-playbooks
