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
# Install databases

  ./database/mysql.sh
  ./database/postgresql.sh
  ./database/sqlite.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Install IDEs and Extra tools

  ./extra/gmate.sh
  ./extra/git.sh
  ./extra/chrome.sh
  ./ruby/image_magick.sh
  
# # # # # # # # # # # # # # # # # # # # # # 
# Install Ruby

  ./ruby/ruby.sh
  ruby ruby/gems.rb
  ./ruby/rvm.sh

# # # # # # # # # # # # # # # # # # # # # # 
# Install test gems and frameworks

  ./test/java.sh
  ./test/hudson.sh


# # # # # # # # # # # # # # # # # # # # # # 
# Useful configs

echo 'alias r=rails' >> ~/.bashrc

