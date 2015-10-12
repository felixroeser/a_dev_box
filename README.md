# Simple vagrant ruby, node, scala, cassandra dev box

Installs:

* Ruby, Go, Node, Scala 2.11, Java8
* Grunt, Phantomjs
* Cassandra , -Redis, Elasticsearch-
* Docker

## Requirements

* [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://www.vagrantup.com/downloads.html)
* nfs-server needed with Ubuntu
* ansible
  * Ubuntu: ppa:ansible/ansible
  * Windows: will be run within the guest vm

````
brew cask install virtualbox
brew cask install vagrant
brew install ansible
````

## Installation

    $ git clone git@github.com:felixroeser/a_dev_box.git devbox
    $ cd devbox
    $ DEVBOXCPUS=2 DEVBOXMEMORY=4096 vagrant up

    # if provisioning fails: (package list might be out of date)
    # vagrant ssh
    # sudo apt-get update
    # exit
    # vagrant provision

## Credits

provisioning/roles/cassandra forked from https://github.com/Kami/ansible-cassandra
provisioning/roles/scala and sbt forked from https://github.com/snowplow/ansible-playbooks
