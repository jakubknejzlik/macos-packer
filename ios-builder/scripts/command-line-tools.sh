#!/bin/bash

# See http://apple.stackexchange.com/questions/107307/how-can-i-install-the-command-line-tools-completely-from-the-command-line

# Only run if the tools are not installed yet
# To check that try to print the SDK path
# echo "Installing system update"
# softwareupdate -l
echo "blah"

ls -la /Users/vagrant
sudo xcode-select --switch /Users/vagrant/Applications/Xcode.app/Contents/Developer
xcode-select -p
exit 1

echo "Checking Xcode CLI tools"


xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -l
  echo "Found versiom ${PROD}, installing.."
  softwareupdate -i "$PROD" --verbose;
else
  echo "Xcode CLI tools OK"
fi

# sudo gem install xcode-install
# echo "switch"
# sudo xcode-select -switch /
# sudo xcode-select -p

# brew install rbenv ruby-build
# xcode-select --install
# sudo gem update
# sudo gem install fastlane -NV || cat /Library/Ruby/Gems/2.6.0/extensions/universal-darwin-19/2.6.0/unf_ext-0.0.7.7/mkmf.log
