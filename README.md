# macos-packer

Tools for building macos VM for virtualbox that can be used as Gitlab runner (with virtualbox executor).

## Setup

For this You need following things installed:

- homebrew
- vagrant
- virtualbox
- packer

## Usage

There are 3 types of images.

1. plain macos built using macinbox (https://app.vagrantup.com/jakubknejzlik/boxes/macos)
1. previous image with xcode installation (https://app.vagrantup.com/jakubknejzlik/boxes/xcode)
1. previous image with various tools for automation (fastlane, cocoapods, gitlab-runner etc. - https://app.vagrantup.com/jakubknejzlik/boxes/xcode with \*-ios-builder tags)

All images are uploaded to vagrant cloud where You can freely use them. The Xcode is installed manually without xcversion tool (we've hit some bumps with 11.4 version when using xcversion). This unfortunately means that #1 and #2 are handled manually.

In most cases the #3 should be enough, in case You need custom tools added, feel free to reuse ios-builder packer template and add your own scripts.
