create-vm:
	vagrant up && vagrant halt
	VBoxManage snapshot ios-builder take snapshot1

build:
	packer build template.json

publish:
	vagrant package --base ios-builder
	vagrant cloud publish --release jakubknejzlik/xcode 11.4-ios-builder virtualbox package.box