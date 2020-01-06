validate:
	packer validate config.json

build: validate
	packer build -debug config.json
