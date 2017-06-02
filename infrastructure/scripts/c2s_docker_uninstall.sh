#!/bin/bash -x
dockerVersion=docker-engine-1.13.0-1.el7.centos
dockerComposeVersion=1.10.1

sudo su << SudoUser
       yum -y remove docker \
                  docker-common \
                  container-selinux \
                  docker-selinux \
                  docker-engine

        rm -rf /var/lib/docker

        rm /usr/local/bin/docker-compose

        rm -rf /etc/docker
SudoUser

