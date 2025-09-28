include .env
include .cmd.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: echo_init_network
echo_init_network:
	@echo ${DOCKER} network ls
	@echo ${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	@echo ${DOCKER} network ls

echo_init_volume:
	@echo ${DOCKER} volume ls
	@echo ${DOCKER} volume create --name xx
	@echo ${DOCKER} volume ls

.PHONY: rm_all_containers prune_docker
rm_all_containers:
	@${DOCKER} ps -a -q | xargs ${DOCKER} rm -f

.PHONY: rm_single
rm_single:
	@rm -rf ${DATA_HOST_PATH}/single
