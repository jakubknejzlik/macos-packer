prepare-vm:
	vagrant up && vagrant halt

create-vm-snapshot:
	VBoxManage snapshot catalina take snapshot1

build-base: create-vm-snapshot
	packer build base.json
publish-base:
	vagrant cloud publish --release jakubknejzlik/macos 10.15.4 virtualbox macos-10.14.5

publish-xcode:
	vagrant package --base catalina
	vagrant cloud publish --release jakubknejzlik/macos-xcode 10.15.4 virtualbox package.box

build-gitlab-runner:
	packer build gitlab-runner.json
