softwareupdate --fetch-full-installer --full-installer-version 10.15.7

sudo macinbox --box-format virtualbox

exit 0

vagrant up
vagrant halt

vagrant box remove --force macinbox

vagrant package --base macos
vagrant cloud publish --force jakubknejzlik/macos 11.1 virtualbox package.box

rm package.box