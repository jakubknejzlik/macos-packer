softwareupdate --fetch-full-installer

macinbox --box-format virtualbox

vagrant up
vagrant halt

vagrant box remove --force macinbox

vagrant package --base macos
vagrant cloud publish jakubknejzlik/macos 10.15.4 virtualbox package.box

rm package.box