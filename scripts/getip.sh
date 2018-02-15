#!/bin/bash
/sbin/ifconfig eth0 | grep 'inet ' | cut -d: -f2 | awk '{ print $2}' >> /usr/share/nginx/html/index.html
