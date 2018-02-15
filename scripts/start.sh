#!/bin/bash
service nginx start > /var/log/start.out 2>&1
rm -rf /usr/share/nginx/html/*
