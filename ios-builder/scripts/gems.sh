#!/bin/sh

export PATH="/usr/local/bin:$PATH"

echo -e "export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8" >> ~/.bash_profile

brew install rbenv ruby-build

sudo gem update

sudo gem install fastlane -NV
sudo gem install cocoapods

cat /Library/Ruby/Gems/2.6.0/extensions/universal-darwin-19/2.6.0/ffi-1.15.0/mkmf.log