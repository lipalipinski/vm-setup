# vm-setup

This repo is a part of Intro to DevOps final project. It holds Vagrantfile and ansible playbook/roles for provisioning following VMs:
- vm0-docker - for running Jenkins agent
- vm1-jenkins - running Jenkins controller
- vm2-nexus - running Nexus Repository Manager

Vagrant is expecting Virtualbox installed. All VMs are running [hashicorp/bionic64](https://app.vagrantup.com/hashicorp/boxes/bionic64) (Ubuntu 18.04.6 LTS)

Run `vagrant up --provision` tu start VMs.