include .env

ANSIBLE_CONFIG := ${ANSIBLE_CONFIG}
export ANSIBLE_CONFIG

build-test-environment:
	@docker-compose -f tests/docker-compose.yaml up -d

generate-host-ssh-key:
	@ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ''

run-test-playbook:
	@ansible-playbook provisioning/main.yaml

test-docker-containers:
	@bash tests/check-docker-container.sh "portainer"