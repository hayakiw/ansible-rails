## Install modules
mysql
rbenv

## Setup development environment

### Prerequisites

Install vagrant:  
https://www.vagrantup.com/downloads.html

Install VirtualBox:  
https://www.virtualbox.org/wiki/Downloads

Execute:

```
$ vagrant plugin install vagrant-vbguest
```

### Setup

```
$ git clone git@github.com:hayakiw/ansible-rails.git

$ cd ansible-rails/dev
$ vagrant up

```

```
$ vagrant ssh
[vagrant@localhost ~]$ cd /vagrant/
[vagrant@localhost ~]$ bundle install
[vagrant@localhost ~]$ rake db:setup
[vagrant@localhost ~]$ rails s -b 0.0.0.0
```

The development rails server should be up and running. Bring up the browser and access to the url: 'http://localhost:3000/'.
