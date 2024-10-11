#!/bin/bash
sed -i '/^#\ ADDED\ HOSTS$/,$d' /etc/hosts
cat /data/hosts >> /etc/hosts
