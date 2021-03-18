create-vm:
	vagrant up && vagrant halt
	VBoxManage snapshot ios-builder take snapshot1

build:
	packer build template.json

publish:
	vagrant package --base ios-builder --output package.box
	vagrant cloud publish --release jakubknejzlik/xcode 11.4-ios-builder virtualbox package.box
	vagrant cloud publish --release jakubknejzlik/macos-catalina 10.15.7 virtualbox package.box

publish-xcode:
	vagrant package --base ios-builder --output package.box
	vagrant cloud publish --release jakubknejzlik/xcode 11.4 virtualbox package.box