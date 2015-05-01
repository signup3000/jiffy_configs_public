#!/bin/bash

echo "Checking if mongod is running or not ..."
ps -eaf |grep mongod |grep -v grep > /dev/null 2>&1
