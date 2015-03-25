all:

dev-environment:
	ansible-playbook -c local -i localhost, dev-environment.yml
