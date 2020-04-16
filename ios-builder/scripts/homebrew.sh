#!/bin/sh

whoami

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

export PATH="/usr/local/bin:$PATH"
# echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

brew doctor