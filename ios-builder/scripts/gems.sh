#!/bin/sh

export PATH="/usr/local/bin:$PATH"

echo -e "export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8" >> ~/.bash_profile

sudo gem install fastlane -NV
sudo gem install cocoapods