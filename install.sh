#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "==================================="
	echo " You need to be root to run this!  "
	echo "===================================\n"
  exit 2
fi

apt-get update
apt-get -y install libc6-dev libssl-dev libmysql++-dev libsqlite3-dev make build-essential libssl-dev libreadline5-dev zlib1g-dev

# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the databases installers

  chmod +x databases/*

# Install databases

  ./databases/mysql.sh
  ./databases/postgresql.sh
  ./databases/sqlite.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the IDEs installers

  chmod +x extra/*
  chmod +x ruby/*

# Install IDEs and Extra tools

  ./extra/gmate.sh
  ./extra/git.sh
  ./extra/chrome.sh
  ./ruby/image_magick.sh
  
# Install Ruby

  ./ruby/ruby.sh
  ruby ruby/gems.rb

# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the test and frameworks installers

  chmod +x test/*

# Install test gems and frameworks

  ./test/java.sh
  ./test/hudson.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Useful configs

echo 'alias r=rails' >> ~/.bashrc

