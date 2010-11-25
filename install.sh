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

  ./databases/chmod +x *

# Install databases

  ./databases/mysql.sh
  ./databases/postgresql.sh
  ./databases/sqlite.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the IDEs installers

  ./extra/chmod +x *

# Install IDEs and Extra tools

  ./extra/gmate.sh
  ./extra/git.sh
  ./extra/chrome.sh
  ./ruby/image_magick.sh
  
# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the Ruby archives

  ./ruby/chmod +x *

# Install Ruby

  ./ruby/ruby.sh
  ruby ruby/gems.rb

# # # # # # # # # # # # # # # # # # # # # # 
# Set the permissions for the test and frameworks installers

  ./test/chmod +x *

# Install test gems and frameworks

  ./test/java.sh
  ./test/hudson.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Useful configs

echo 'alias r=rails' >> ~/.bashrc

