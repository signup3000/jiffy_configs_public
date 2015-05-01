#!/bin/bash

echo "Checking if mysqld is running or not ..."
ps -eaf |grep mysqld |grep -v grep > /dev/null 2>&1
