#!/bin/bash

echo "Checking if $check_daemon is running or not ..."
ps -eaf |grep $check_daemon |grep -v grep > /dev/null 2>&1
