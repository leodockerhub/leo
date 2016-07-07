#!/bin/bash
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE DATABASE todoVal"
mysql -u root todoVal < /tmp/todoVal.sql
