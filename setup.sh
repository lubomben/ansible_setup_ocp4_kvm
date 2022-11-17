#!/bin/bash

ansible-playbook tasks/configure_dhcpd.yml
ansible-playbook tasks/configure_bind_dns.yml
ansible-playbook tasks/configure_httpd.yml
ansible-playbook tasks/configure_tftp_pxe.yml
ansible-playbook tasks/configure_haproxy_lb.yml

