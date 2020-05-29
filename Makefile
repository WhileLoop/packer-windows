validate:
	packer validate config.json

build: validate
	packer build config.json

build-debug: validate
	packer build -debug config.json

clean-cache:
	rm -rf packer_cache

clean-vagrant:
	rm -rf artifacts/vagrant

clean-virtualbox:
	rm -rf artifacts/virtualbox

clean-all: clean-cache clean-vagrant clean-virtualbox

clean-vagrant-boxes:
	rm -rf ~/.vagrant.d/boxes/*

clean-vagrant-dir:
	rm -rf .vagrant

get-pub-key:
	ssh-keygen -y -f ~/.vagrant.d/insecure_private_key > ssh/authorized_keys

up:
	vagrant up

down:
	vagrant halt

destroy:
	vagrant destroy -f
