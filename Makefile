.DEFAULT_GOAL:=install

apt_update: 
	yes | apt update

apt_upgrade: apt_update
	yes | apt upgrade -y

install: /usr/bin/ansible-playbook
	/usr/bin/ansible-playbook --connection=local --inventory 127.0.0.1, ./hcpsetup/playbook.yml

/usr/bin/ansible-playbook: apt_upgrade
	yes | apt install -y ansible
