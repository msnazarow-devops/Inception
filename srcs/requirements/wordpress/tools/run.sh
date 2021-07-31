#!/bin/sh
tar -xzf latest.tar.gz
chmod 777 -R wordpress/
sh wp_install.sh
sh mysupervisor.sh